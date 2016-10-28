
-- +goose Up
-- SQL in section 'Up' is executed when this migration is applied
CREATE TABLE IF NOT EXISTS `clients` (
  `id` INT NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
)
ENGINE = InnoDB;


-- +goose Down
-- SQL section 'Down' is executed when this migration is rolled back

DROP TABLE `clients`;