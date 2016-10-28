
-- +goose Up
-- SQL in section 'Up' is executed when this migration is applied
CREATE TABLE IF NOT EXISTS `groups` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `client_id` INT NOT NULL,
  `parent_id` INT NOT NULL,
  FOREIGN KEY (`client_id`) REFERENCES clients(`id`),
  PRIMARY KEY (`id`)
)
ENGINE = InnoDB;

-- +goose Down
-- SQL section 'Down' is executed when this migration is rolled back

DROP TABLE `groups`