
-- +goose Up
-- SQL in section 'Up' is executed when this migration is applied
CREATE TABLE IF NOT EXISTS `bill_histories` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `bill_id` INT NOT NULL,
  FOREIGN KEY (`bill_id`) REFERENCES bills(`id`),
  PRIMARY KEY (`id`)
)
ENGINE = InnoDB;

-- +goose Down
-- SQL section 'Down' is executed when this migration is rolled back

DROP TABLE `bill_histories`