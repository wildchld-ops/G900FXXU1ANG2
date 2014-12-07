.class Lcom/android/i18n/addressinput/AddressUIComponent;
.super Ljava/lang/Object;
.source "AddressUIComponent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/i18n/addressinput/AddressUIComponent$1;,
        Lcom/android/i18n/addressinput/AddressUIComponent$UIComponent;
    }
.end annotation


# instance fields
.field private mCandidatesList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/i18n/addressinput/RegionData;",
            ">;"
        }
    .end annotation
.end field

.field private mFieldName:Ljava/lang/String;

.field private mId:Lcom/android/i18n/addressinput/AddressField;

.field private mParentId:Lcom/android/i18n/addressinput/AddressField;

.field private mUiType:Lcom/android/i18n/addressinput/AddressUIComponent$UIComponent;

.field private mView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/i18n/addressinput/AddressField;)V
    .locals 1
    .param p1    # Lcom/android/i18n/addressinput/AddressField;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/i18n/addressinput/AddressUIComponent;->mCandidatesList:Ljava/util/List;

    iput-object p1, p0, Lcom/android/i18n/addressinput/AddressUIComponent;->mId:Lcom/android/i18n/addressinput/AddressField;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/i18n/addressinput/AddressUIComponent;->mParentId:Lcom/android/i18n/addressinput/AddressField;

    sget-object v0, Lcom/android/i18n/addressinput/AddressUIComponent$UIComponent;->EDIT:Lcom/android/i18n/addressinput/AddressUIComponent$UIComponent;

    iput-object v0, p0, Lcom/android/i18n/addressinput/AddressUIComponent;->mUiType:Lcom/android/i18n/addressinput/AddressUIComponent$UIComponent;

    return-void
.end method


# virtual methods
.method getCandidatesList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/i18n/addressinput/RegionData;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/i18n/addressinput/AddressUIComponent;->mCandidatesList:Ljava/util/List;

    return-object v0
.end method

.method getFieldName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/i18n/addressinput/AddressUIComponent;->mFieldName:Ljava/lang/String;

    return-object v0
.end method

.method getId()Lcom/android/i18n/addressinput/AddressField;
    .locals 1

    iget-object v0, p0, Lcom/android/i18n/addressinput/AddressUIComponent;->mId:Lcom/android/i18n/addressinput/AddressField;

    return-object v0
.end method

.method getParentId()Lcom/android/i18n/addressinput/AddressField;
    .locals 1

    iget-object v0, p0, Lcom/android/i18n/addressinput/AddressUIComponent;->mParentId:Lcom/android/i18n/addressinput/AddressField;

    return-object v0
.end method

.method getUIType()Lcom/android/i18n/addressinput/AddressUIComponent$UIComponent;
    .locals 1

    iget-object v0, p0, Lcom/android/i18n/addressinput/AddressUIComponent;->mUiType:Lcom/android/i18n/addressinput/AddressUIComponent$UIComponent;

    return-object v0
.end method

.method getValue()Ljava/lang/String;
    .locals 3

    iget-object v1, p0, Lcom/android/i18n/addressinput/AddressUIComponent;->mView:Landroid/view/View;

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/i18n/addressinput/AddressUIComponent;->mCandidatesList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    const-string v1, ""

    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/android/i18n/addressinput/AddressUIComponent;->mCandidatesList:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/i18n/addressinput/RegionData;

    invoke-virtual {v1}, Lcom/android/i18n/addressinput/RegionData;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/android/i18n/addressinput/AddressUIComponent$1;->$SwitchMap$com$android$i18n$addressinput$AddressUIComponent$UIComponent:[I

    iget-object v2, p0, Lcom/android/i18n/addressinput/AddressUIComponent;->mUiType:Lcom/android/i18n/addressinput/AddressUIComponent$UIComponent;

    invoke-virtual {v2}, Lcom/android/i18n/addressinput/AddressUIComponent$UIComponent;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    const-string v1, ""

    goto :goto_0

    :pswitch_0
    iget-object v1, p0, Lcom/android/i18n/addressinput/AddressUIComponent;->mView:Landroid/view/View;

    check-cast v1, Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    const-string v1, ""

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/android/i18n/addressinput/AddressUIComponent;->mView:Landroid/view/View;

    check-cast v1, Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method getView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/i18n/addressinput/AddressUIComponent;->mView:Landroid/view/View;

    return-object v0
.end method

.method initializeCandidatesList(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/i18n/addressinput/RegionData;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/i18n/addressinput/AddressUIComponent;->mCandidatesList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    sget-object v0, Lcom/android/i18n/addressinput/AddressUIComponent$UIComponent;->SPINNER:Lcom/android/i18n/addressinput/AddressUIComponent$UIComponent;

    iput-object v0, p0, Lcom/android/i18n/addressinput/AddressUIComponent;->mUiType:Lcom/android/i18n/addressinput/AddressUIComponent$UIComponent;

    sget-object v0, Lcom/android/i18n/addressinput/AddressUIComponent$1;->$SwitchMap$com$android$i18n$addressinput$AddressField:[I

    iget-object v1, p0, Lcom/android/i18n/addressinput/AddressUIComponent;->mId:Lcom/android/i18n/addressinput/AddressField;

    invoke-virtual {v1}, Lcom/android/i18n/addressinput/AddressField;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    sget-object v0, Lcom/android/i18n/addressinput/AddressField;->LOCALITY:Lcom/android/i18n/addressinput/AddressField;

    iput-object v0, p0, Lcom/android/i18n/addressinput/AddressUIComponent;->mParentId:Lcom/android/i18n/addressinput/AddressField;

    goto :goto_0

    :pswitch_1
    sget-object v0, Lcom/android/i18n/addressinput/AddressField;->ADMIN_AREA:Lcom/android/i18n/addressinput/AddressField;

    iput-object v0, p0, Lcom/android/i18n/addressinput/AddressUIComponent;->mParentId:Lcom/android/i18n/addressinput/AddressField;

    goto :goto_0

    :pswitch_2
    sget-object v0, Lcom/android/i18n/addressinput/AddressField;->COUNTRY:Lcom/android/i18n/addressinput/AddressField;

    iput-object v0, p0, Lcom/android/i18n/addressinput/AddressUIComponent;->mParentId:Lcom/android/i18n/addressinput/AddressField;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method setFieldName(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;

    iput-object p1, p0, Lcom/android/i18n/addressinput/AddressUIComponent;->mFieldName:Ljava/lang/String;

    return-void
.end method

.method setView(Landroid/view/View;)V
    .locals 0
    .param p1    # Landroid/view/View;

    iput-object p1, p0, Lcom/android/i18n/addressinput/AddressUIComponent;->mView:Landroid/view/View;

    return-void
.end method
