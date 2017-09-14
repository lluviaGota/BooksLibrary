
package beans;

public class Genre {

    private String name;
    private long id;
    
    public Genre() {
    }
    
    public Genre (String name) {
        this.name = name;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }
    
    
}

