.class Lcom/android/launcher2/HomeMagazineSoftKey$5;
.super Ljava/lang/Object;
.source "HomeMagazineSoftKey.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/HomeMagazineSoftKey;->setup(Lcom/android/launcher2/HomeView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/HomeMagazineSoftKey;


# direct methods
.method constructor <init>(Lcom/android/launcher2/HomeMagazineSoftKey;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/HomeMagazineSoftKey$5;->this$0:Lcom/android/launcher2/HomeMagazineSoftKey;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "CHN"

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "com.vlingo.midas"

    const-string v2, "com.vlingo.midas.gui.ConversationActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :goto_0
    iget-object v1, p0, Lcom/android/launcher2/HomeMagazineSoftKey$5;->this$0:Lcom/android/launcher2/HomeMagazineSoftKey;

    # getter for: Lcom/android/launcher2/HomeMagazineSoftKey;->mHomeView:Lcom/android/launcher2/HomeView;
    invoke-static {v1}, Lcom/android/launcher2/HomeMagazineSoftKey;->access$100(Lcom/android/launcher2/HomeMagazineSoftKey;)Lcom/android/launcher2/HomeView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :goto_1
    return-void

    :cond_0
    const-string v1, "com.google.android.googlequicksearchbox"

    const-string v2, "com.google.android.googlequicksearchbox.VoiceSearchActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_1
.end method
