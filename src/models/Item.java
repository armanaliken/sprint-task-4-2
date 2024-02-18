package models;

public class Item {
    private Long id;
    private String name;
    private String ram;
    private String storage;
    private String processor;
    private String price;

    public Item(){

    }
    public Item(Long id, String name, String description, String price, String ram, String storage, String processor) {
        this.id = id;
        this.name = name;
        this.price = price;
        this.storage = storage;
        this.price = price;
        this.processor = processor;

    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPrice() {
        return price;
    }

    public void setPrice(String price) {
        this.price = price;
    }

    public String getRam() {
        return ram;
    }

    public void setRam(String ram) {
        this.ram = ram;
    }

    public String getStorage() {
        return storage;
    }

    public void setStorage(String storage) {
        this.storage = storage;
    }

    public String getProcessor() {
        return processor;
    }

    public void setProcessor(String processor) {
        this.processor = processor;
    }
}
