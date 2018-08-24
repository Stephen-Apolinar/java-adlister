import java.sql.*;
import com.mysql.cj.jdbc.Driver;
import java.util.ArrayList;
import java.util.List;

public class MySQLAdsDao implements Ads {
    private Connection connection;
    private List<Ad> ads;

    public MySQLAdsDao(Config config) {
        try {
            DriverManager.registerDriver(new Driver());
            this.connection = DriverManager.getConnection(
                    config.getUrl(), config.getUsername(), config.getPassword()
            );
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    @Override
    public List<Ad> all() {
        try {
            Statement statement = connection.createStatement();
            String all = "SELECT * FROM ads";
            ResultSet rs = statement.executeQuery(all);
            return buildAds(rs);
        } catch (SQLException e) {
            e.printStackTrace();
            throw new RuntimeException("something went wrong");
        }
    }

    private List<Ad> buildAds(ResultSet rs) throws SQLException {
        ads = new ArrayList<>();

        while(rs.next()) {
            ads.add(
                    new Ad(
                            rs.getLong("user_id"),
                            rs.getString("title"),
                            rs.getString("description")
                    )
            );
        }
        return ads;
    }

    @Override
    public Long insert(Ad ad) {
        try {
            Statement stmt = connection.createStatement();
            String insert = String.format("INSERT INTO ads(user_id, title, description) VALUES ('%o', '%s', '%s')", ad.getUserId(), ad.getTitle(), ad.getDescription());
            stmt.executeUpdate(insert, stmt.RETURN_GENERATED_KEYS);
            ResultSet rs = stmt.getGeneratedKeys();
            if (rs.next()) {
                return rs.getLong(1);
            }
        } catch (SQLException e) {
            e.printStackTrace();
            throw new RuntimeException("something happened");
        }
        return null;
    }
}