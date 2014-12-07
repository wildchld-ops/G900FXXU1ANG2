.class public Lcom/samsung/contacts/detail/ContactDetailButtonLayoutManager;
.super Ljava/lang/Object;
.source "ContactDetailButtonLayoutManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/contacts/detail/ContactDetailButtonLayoutManager$DetailViewCache;
    }
.end annotation


# instance fields
.field public mUseHorizontalButton:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/contacts/detail/ContactDetailButtonLayoutManager;->mUseHorizontalButton:Z

    return-void
.end method


# virtual methods
.method public bindSecondaryActionButton(Lcom/samsung/contacts/detail/ContactDetailButtonLayoutManager$DetailViewCache;Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;Landroid/content/res/Resources;Z)V
    .locals 0

    return-void
.end method

.method public bindThirdActionButton(Lcom/samsung/contacts/detail/ContactDetailButtonLayoutManager$DetailViewCache;Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;Landroid/content/res/Resources;Z)V
    .locals 0

    return-void
.end method
