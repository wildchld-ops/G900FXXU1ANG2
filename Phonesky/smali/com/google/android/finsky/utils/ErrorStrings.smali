.class public Lcom/google/android/finsky/utils/ErrorStrings;
.super Ljava/lang/Object;
.source "ErrorStrings.java"


# direct methods
.method public static get(Landroid/content/Context;Lcom/android/volley/VolleyError;)Ljava/lang/String;
    .locals 4

    const v3, 0x7f090143

    instance-of v0, p1, Lcom/google/android/volley/DisplayMessageError;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/google/android/volley/DisplayMessageError;

    invoke-virtual {p1}, Lcom/google/android/volley/DisplayMessageError;->getDisplayErrorHtml()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    instance-of v0, p1, Lcom/android/volley/AuthFailureError;

    if-eqz v0, :cond_1

    const v0, 0x7f09014c

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    instance-of v0, p1, Lcom/android/volley/ServerError;

    if-eqz v0, :cond_2

    const v0, 0x7f09014a

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    instance-of v0, p1, Lcom/android/volley/TimeoutError;

    if-eqz v0, :cond_3

    const v0, 0x7f090144

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    instance-of v0, p1, Lcom/android/volley/NetworkError;

    if-eqz v0, :cond_4

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_4
    const-string v0, "No specific error message for: %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
