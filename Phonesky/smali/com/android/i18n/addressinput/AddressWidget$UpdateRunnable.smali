.class Lcom/android/i18n/addressinput/AddressWidget$UpdateRunnable;
.super Ljava/lang/Object;
.source "AddressWidget.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/i18n/addressinput/AddressWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UpdateRunnable"
.end annotation


# instance fields
.field private myId:Lcom/android/i18n/addressinput/AddressField;

.field final synthetic this$0:Lcom/android/i18n/addressinput/AddressWidget;


# direct methods
.method public constructor <init>(Lcom/android/i18n/addressinput/AddressWidget;Lcom/android/i18n/addressinput/AddressField;)V
    .locals 0
    .param p2    # Lcom/android/i18n/addressinput/AddressField;

    iput-object p1, p0, Lcom/android/i18n/addressinput/AddressWidget$UpdateRunnable;->this$0:Lcom/android/i18n/addressinput/AddressWidget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/i18n/addressinput/AddressWidget$UpdateRunnable;->myId:Lcom/android/i18n/addressinput/AddressField;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/i18n/addressinput/AddressWidget$UpdateRunnable;->this$0:Lcom/android/i18n/addressinput/AddressWidget;

    iget-object v1, p0, Lcom/android/i18n/addressinput/AddressWidget$UpdateRunnable;->myId:Lcom/android/i18n/addressinput/AddressField;

    # invokes: Lcom/android/i18n/addressinput/AddressWidget;->updateInputWidget(Lcom/android/i18n/addressinput/AddressField;)V
    invoke-static {v0, v1}, Lcom/android/i18n/addressinput/AddressWidget;->access$100(Lcom/android/i18n/addressinput/AddressWidget;Lcom/android/i18n/addressinput/AddressField;)V

    return-void
.end method
