.class public abstract Lcom/google/android/finsky/utils/FastHtmlParser;
.super Ljava/lang/Object;
.source "FastHtmlParser.java"


# direct methods
.method public static fromHtml(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 10

    const/4 v8, -0x1

    const/4 v7, 0x1

    const/4 v9, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "<p>"

    const-string v6, "\n\n"

    invoke-static {v0, v5, v6}, Lcom/google/android/finsky/utils/FastHtmlParser;->replace(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "<br>"

    const-string v6, "\n"

    invoke-static {v0, v5, v6}, Lcom/google/android/finsky/utils/FastHtmlParser;->replace(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "<"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-eq v4, v8, :cond_1

    const-string v5, "Doing slow HTML parse due to unexpected tag %s"

    new-array v6, v7, [Ljava/lang/Object;

    add-int/lit8 v7, v4, 0xa

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    invoke-virtual {v0, v4, v7}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v5, v6}, Lcom/google/android/finsky/utils/DfeLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {p0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const/4 v4, 0x0

    :goto_1
    const-string v5, "&"

    invoke-virtual {v0, v5, v4}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;I)I

    move-result v4

    if-eq v4, v8, :cond_0

    const-string v5, ";"

    invoke-virtual {v0, v5, v4}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;I)I

    move-result v2

    if-eq v2, v8, :cond_0

    add-int/lit8 v5, v4, 0x1

    invoke-virtual {v0, v5, v2}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v5, v4, 0x1

    add-int/lit8 v6, v2, 0x1

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x23

    if-ne v5, v6, :cond_2

    const/4 v5, 0x1

    :try_start_0
    invoke-virtual {v3, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    int-to-char v5, v5

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->setCharAt(IC)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :catch_0
    move-exception v1

    const-string v5, "Doing slow HTML parse due to unexpected &# escape %s"

    new-array v6, v7, [Ljava/lang/Object;

    aput-object v3, v6, v9

    invoke-static {v5, v6}, Lcom/google/android/finsky/utils/DfeLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {p0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    goto :goto_0

    :cond_2
    const-string v5, "quot"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    const/16 v5, 0x22

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    goto :goto_2

    :cond_3
    const-string v5, "apos"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    const/16 v5, 0x27

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    goto :goto_2

    :cond_4
    const-string v5, "amp"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    const/16 v5, 0x26

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    goto :goto_2

    :cond_5
    const-string v5, "lt"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    const/16 v5, 0x3c

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    goto :goto_2

    :cond_6
    const-string v5, "gt"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    const/16 v5, 0x3e

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    goto :goto_2

    :cond_7
    const-string v5, "Doing slow HTML parse due to unexpected & escape %s"

    new-array v6, v7, [Ljava/lang/Object;

    aput-object v3, v6, v9

    invoke-static {v5, v6}, Lcom/google/android/finsky/utils/DfeLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {p0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    goto/16 :goto_0
.end method

.method private static replace(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0, p1, v1}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;I)I

    move-result v1

    const/4 v3, -0x1

    if-ne v1, v3, :cond_0

    return-void

    :cond_0
    add-int v3, v1, v0

    invoke-virtual {p0, v1, v3, p2}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    add-int/2addr v1, v2

    goto :goto_0
.end method
