.class Lcom/samsung/contacts/vcard/ImportVCardPreviewActivity$CancelListener;
.super Ljava/lang/Object;
.source "ImportVCardPreviewActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/contacts/vcard/ImportVCardPreviewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CancelListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/contacts/vcard/ImportVCardPreviewActivity;


# direct methods
.method private constructor <init>(Lcom/samsung/contacts/vcard/ImportVCardPreviewActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/contacts/vcard/ImportVCardPreviewActivity$CancelListener;->this$0:Lcom/samsung/contacts/vcard/ImportVCardPreviewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/contacts/vcard/ImportVCardPreviewActivity;Lcom/samsung/contacts/vcard/ImportVCardPreviewActivity$1;)V
    .locals 0
    .param p1    # Lcom/samsung/contacts/vcard/ImportVCardPreviewActivity;
    .param p2    # Lcom/samsung/contacts/vcard/ImportVCardPreviewActivity$1;

    invoke-direct {p0, p1}, Lcom/samsung/contacts/vcard/ImportVCardPreviewActivity$CancelListener;-><init>(Lcom/samsung/contacts/vcard/ImportVCardPreviewActivity;)V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1    # Landroid/content/DialogInterface;

    iget-object v0, p0, Lcom/samsung/contacts/vcard/ImportVCardPreviewActivity$CancelListener;->this$0:Lcom/samsung/contacts/vcard/ImportVCardPreviewActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    iget-object v0, p0, Lcom/samsung/contacts/vcard/ImportVCardPreviewActivity$CancelListener;->this$0:Lcom/samsung/contacts/vcard/ImportVCardPreviewActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1    # Landroid/content/DialogInterface;
    .param p2    # I

    iget-object v0, p0, Lcom/samsung/contacts/vcard/ImportVCardPreviewActivity$CancelListener;->this$0:Lcom/samsung/contacts/vcard/ImportVCardPreviewActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    iget-object v0, p0, Lcom/samsung/contacts/vcard/ImportVCardPreviewActivity$CancelListener;->this$0:Lcom/samsung/contacts/vcard/ImportVCardPreviewActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method
