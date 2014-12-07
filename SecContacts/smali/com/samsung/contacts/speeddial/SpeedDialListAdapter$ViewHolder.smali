.class Lcom/samsung/contacts/speeddial/SpeedDialListAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "SpeedDialListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/contacts/speeddial/SpeedDialListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ViewHolder"
.end annotation


# instance fields
.field AddButton:Landroid/widget/LinearLayout;

.field DelBtnContainer:Landroid/widget/RelativeLayout;

.field DelButton:Landroid/widget/Button;

.field listItemData:Landroid/widget/LinearLayout;

.field name:Landroid/widget/TextView;

.field phone:Landroid/widget/TextView;

.field photoView:Landroid/widget/ImageView;

.field spdlNum:Landroid/widget/TextView;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/contacts/speeddial/SpeedDialListAdapter$1;)V
    .locals 0
    .param p1    # Lcom/samsung/contacts/speeddial/SpeedDialListAdapter$1;

    invoke-direct {p0}, Lcom/samsung/contacts/speeddial/SpeedDialListAdapter$ViewHolder;-><init>()V

    return-void
.end method
