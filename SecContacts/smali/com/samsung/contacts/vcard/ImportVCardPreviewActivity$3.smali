.class Lcom/samsung/contacts/vcard/ImportVCardPreviewActivity$3;
.super Ljava/lang/Object;
.source "ImportVCardPreviewActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/contacts/vcard/ImportVCardPreviewActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/contacts/vcard/ImportVCardPreviewActivity;


# direct methods
.method constructor <init>(Lcom/samsung/contacts/vcard/ImportVCardPreviewActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/contacts/vcard/ImportVCardPreviewActivity$3;->this$0:Lcom/samsung/contacts/vcard/ImportVCardPreviewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/contacts/vcard/ImportVCardPreviewActivity$3;->this$0:Lcom/samsung/contacts/vcard/ImportVCardPreviewActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    iget-object v0, p0, Lcom/samsung/contacts/vcard/ImportVCardPreviewActivity$3;->this$0:Lcom/samsung/contacts/vcard/ImportVCardPreviewActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method
