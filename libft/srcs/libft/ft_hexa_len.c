/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_hexa_len.c                                      :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: llahti <llahti@student.42.fr>              +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2020/01/23 16:06:29 by llahti            #+#    #+#             */
/*   Updated: 2020/01/23 16:06:42 by llahti           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

int		ft_hexa_len(char *str)
{
	int		len;

	len = 0;
	while (ft_is_hexa(*str))
	{
		len++;
		str++;
	}
	return (len);
}
