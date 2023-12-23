/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   c_str.c                                            :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: jarunota <jarunota@student.42bangkok.co    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2023/12/23 20:55:47 by jarunota          #+#    #+#             */
/*   Updated: 2023/12/23 21:01:40 by jarunota         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "ft_printf.h"

int	ft_putchar(int c)
{
	return (write(1, &c, 1));
}

int	ft_printpercent(void)
{
	return (write(1, "%", 1));
}

int	ft_putstr(char *str)
{
	int	len;

	len = 0;
	if (!str)
		return (0);
	while (*str)
		len += write(1, str++, 1);
	return (len);
}
