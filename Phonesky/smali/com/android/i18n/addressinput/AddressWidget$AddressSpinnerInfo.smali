.class Lcom/android/i18n/addressinput/AddressWidget$AddressSpinnerInfo;
.super Ljava/lang/Object;
.source "AddressWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/i18n/addressinput/AddressWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AddressSpinnerInfo"
.end annotation


# instance fields
.field private mAdapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentRegions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/i18n/addressinput/RegionData;",
            ">;"
        }
    .end annotation
.end field

.field private mId:Lcom/android/i18n/addressinput/AddressField;

.field private mParentId:Lcom/android/i18n/addressinput/AddressField;

.field private mView:Landroid/widget/Spinner;


# direct methods
.method public constructor <init>(Landroid/widget/Spinner;Lcom/android/i18n/addressinput/AddressField;Lcom/android/i18n/addressinput/AddressField;)V
    .locals 0
    .param p1    # Landroid/widget/Spinner;
    .param p2    # Lcom/android/i18n/addressinput/AddressField;
    .param p3    # Lcom/android/i18n/addressinput/AddressField;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/i18n/addressinput/AddressWidget$AddressSpinnerInfo;->mView:Landroid/widget/Spinner;

    iput-object p2, p0, Lcom/android/i18n/addressinput/AddressWidget$AddressSpinnerInfo;->mId:Lcom/android/i18n/addressinput/AddressField;

    iput-object p3, p0, Lcom/android/i18n/addressinput/AddressWidget$AddressSpinnerInfo;->mParentId:Lcom/android/i18n/addressinput/AddressField;

    return-void
.end method

.method static synthetic access$200(Lcom/android/i18n/addressinput/AddressWidget$AddressSpinnerInfo;)Landroid/widget/ArrayAdapter;
    .locals 1
    .param p0    # Lcom/android/i18n/addressinput/AddressWidget$AddressSpinnerInfo;

    iget-object v0, p0, Lcom/android/i18n/addressinput/AddressWidget$AddressSpinnerInfo;->mAdapter:Landroid/widget/ArrayAdapter;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/i18n/addressinput/AddressWidget$AddressSpinnerInfo;)Landroid/widget/Spinner;
    .locals 1
    .param p0    # Lcom/android/i18n/addressinput/AddressWidget$AddressSpinnerInfo;

    iget-object v0, p0, Lcom/android/i18n/addressinput/AddressWidget$AddressSpinnerInfo;->mView:Landroid/widget/Spinner;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/i18n/addressinput/AddressWidget$AddressSpinnerInfo;)Lcom/android/i18n/addressinput/AddressField;
    .locals 1
    .param p0    # Lcom/android/i18n/addressinput/AddressWidget$AddressSpinnerInfo;

    iget-object v0, p0, Lcom/android/i18n/addressinput/AddressWidget$AddressSpinnerInfo;->mId:Lcom/android/i18n/addressinput/AddressField;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/i18n/addressinput/AddressWidget$AddressSpinnerInfo;)Lcom/android/i18n/addressinput/AddressField;
    .locals 1
    .param p0    # Lcom/android/i18n/addressinput/AddressWidget$AddressSpinnerInfo;

    iget-object v0, p0, Lcom/android/i18n/addressinput/AddressWidget$AddressSpinnerInfo;->mParentId:Lcom/android/i18n/addressinput/AddressField;

    return-object v0
.end method

.method private findRegionByDisplayName(Ljava/lang/String;)Lcom/android/i18n/addressinput/RegionData;
    .locals 3
    .param p1    # Ljava/lang/String;

    iget-object v2, p0, Lcom/android/i18n/addressinput/AddressWidget$AddressSpinnerInfo;->mCurrentRegions:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/i18n/addressinput/RegionData;

    invoke-virtual {v0}, Lcom/android/i18n/addressinput/RegionData;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private findRegionByKeyIgnoreCase(Ljava/lang/String;)Lcom/android/i18n/addressinput/RegionData;
    .locals 3
    .param p1    # Ljava/lang/String;

    iget-object v2, p0, Lcom/android/i18n/addressinput/AddressWidget$AddressSpinnerInfo;->mCurrentRegions:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/i18n/addressinput/RegionData;

    invoke-virtual {v0}, Lcom/android/i18n/addressinput/RegionData;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getRegionDataKeyForValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1    # Ljava/lang/String;

    iget-object v2, p0, Lcom/android/i18n/addressinput/AddressWidget$AddressSpinnerInfo;->mCurrentRegions:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/i18n/addressinput/RegionData;

    invoke-virtual {v0}, Lcom/android/i18n/addressinput/RegionData;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/android/i18n/addressinput/RegionData;->getKey()Ljava/lang/String;

    move-result-object v2

    :goto_0
    return-object v2

    :cond_1
    const-string v2, ""

    goto :goto_0
.end method

.method public initAdapter(Landroid/content/Context;II)V
    .locals 1
    .param p1    # Landroid/content/Context;
    .param p2    # I
    .param p3    # I

    new-instance v0, Landroid/widget/ArrayAdapter;

    invoke-direct {v0, p1, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/i18n/addressinput/AddressWidget$AddressSpinnerInfo;->mAdapter:Landroid/widget/ArrayAdapter;

    iget-object v0, p0, Lcom/android/i18n/addressinput/AddressWidget$AddressSpinnerInfo;->mAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, p3}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    return-void
.end method

.method public setSelectionByKey(Ljava/lang/String;)V
    .locals 4
    .param p1    # Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/android/i18n/addressinput/AddressWidget$AddressSpinnerInfo;->findRegionByKeyIgnoreCase(Ljava/lang/String;)Lcom/android/i18n/addressinput/RegionData;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/i18n/addressinput/AddressWidget$AddressSpinnerInfo;->mAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0}, Lcom/android/i18n/addressinput/RegionData;->getDisplayName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ArrayAdapter;->getPosition(Ljava/lang/Object;)I

    move-result v1

    if-ltz v1, :cond_0

    iget-object v2, p0, Lcom/android/i18n/addressinput/AddressWidget$AddressSpinnerInfo;->mView:Landroid/widget/Spinner;

    invoke-virtual {v2, v1}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_0
.end method

.method public setSelectionByKeyOrDisplayName(Ljava/lang/String;)V
    .locals 4
    .param p1    # Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/android/i18n/addressinput/AddressWidget$AddressSpinnerInfo;->findRegionByKeyIgnoreCase(Ljava/lang/String;)Lcom/android/i18n/addressinput/RegionData;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-direct {p0, p1}, Lcom/android/i18n/addressinput/AddressWidget$AddressSpinnerInfo;->findRegionByDisplayName(Ljava/lang/String;)Lcom/android/i18n/addressinput/RegionData;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/i18n/addressinput/AddressWidget$AddressSpinnerInfo;->mAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0}, Lcom/android/i18n/addressinput/RegionData;->getDisplayName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ArrayAdapter;->getPosition(Ljava/lang/Object;)I

    move-result v1

    if-ltz v1, :cond_0

    iget-object v2, p0, Lcom/android/i18n/addressinput/AddressWidget$AddressSpinnerInfo;->mView:Landroid/widget/Spinner;

    invoke-virtual {v2, v1}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_0
.end method

.method public setSpinnerList(Ljava/util/List;Ljava/lang/String;)V
    .locals 5
    .param p2    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/i18n/addressinput/RegionData;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/i18n/addressinput/AddressWidget$AddressSpinnerInfo;->mCurrentRegions:Ljava/util/List;

    iget-object v3, p0, Lcom/android/i18n/addressinput/AddressWidget$AddressSpinnerInfo;->mAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v3}, Landroid/widget/ArrayAdapter;->clear()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/i18n/addressinput/RegionData;

    iget-object v3, p0, Lcom/android/i18n/addressinput/AddressWidget$AddressSpinnerInfo;->mAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v1}, Lcom/android/i18n/addressinput/RegionData;->getDisplayName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/android/i18n/addressinput/AddressWidget$AddressSpinnerInfo;->mAdapter:Landroid/widget/ArrayAdapter;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-static {v4}, Ljava/text/Collator;->getInstance(Ljava/util/Locale;)Ljava/text/Collator;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ArrayAdapter;->sort(Ljava/util/Comparator;)V

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/android/i18n/addressinput/AddressWidget$AddressSpinnerInfo;->mView:Landroid/widget/Spinner;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/Spinner;->setSelection(I)V

    :goto_1
    return-void

    :cond_1
    iget-object v3, p0, Lcom/android/i18n/addressinput/AddressWidget$AddressSpinnerInfo;->mAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v3, p2}, Landroid/widget/ArrayAdapter;->getPosition(Ljava/lang/Object;)I

    move-result v2

    iget-object v3, p0, Lcom/android/i18n/addressinput/AddressWidget$AddressSpinnerInfo;->mView:Landroid/widget/Spinner;

    invoke-virtual {v3, v2}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_1
.end method
