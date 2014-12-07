.class Lcom/android/i18n/addressinput/AddressWidget$3;
.super Ljava/lang/Object;
.source "AddressWidget.java"

# interfaces
.implements Lcom/android/i18n/addressinput/DataLoadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/i18n/addressinput/AddressWidget;->renderForm()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/i18n/addressinput/AddressWidget;


# direct methods
.method constructor <init>(Lcom/android/i18n/addressinput/AddressWidget;)V
    .locals 0

    iput-object p1, p0, Lcom/android/i18n/addressinput/AddressWidget$3;->this$0:Lcom/android/i18n/addressinput/AddressWidget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dataLoadingBegin()V
    .locals 0

    return-void
.end method

.method public dataLoadingEnd()V
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Data loading completed."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/i18n/addressinput/AddressWidget$3;->this$0:Lcom/android/i18n/addressinput/AddressWidget;

    iget-object v0, v0, Lcom/android/i18n/addressinput/AddressWidget;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/i18n/addressinput/AddressWidget$3;->this$0:Lcom/android/i18n/addressinput/AddressWidget;

    iget-object v1, v1, Lcom/android/i18n/addressinput/AddressWidget;->mUpdateMultipleFields:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
