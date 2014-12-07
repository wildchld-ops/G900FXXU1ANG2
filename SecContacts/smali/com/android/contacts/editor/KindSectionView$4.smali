.class Lcom/android/contacts/editor/KindSectionView$4;
.super Ljava/lang/Object;
.source "KindSectionView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/editor/KindSectionView;->onDeleteRequested(Lcom/android/contacts/editor/Editor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/editor/KindSectionView;

.field final synthetic val$editor:Lcom/android/contacts/editor/Editor;


# direct methods
.method constructor <init>(Lcom/android/contacts/editor/KindSectionView;Lcom/android/contacts/editor/Editor;)V
    .locals 0

    iput-object p1, p0, Lcom/android/contacts/editor/KindSectionView$4;->this$0:Lcom/android/contacts/editor/KindSectionView;

    iput-object p2, p0, Lcom/android/contacts/editor/KindSectionView$4;->val$editor:Lcom/android/contacts/editor/Editor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1    # Landroid/content/DialogInterface;
    .param p2    # I

    iget-object v0, p0, Lcom/android/contacts/editor/KindSectionView$4;->this$0:Lcom/android/contacts/editor/KindSectionView;

    iget-object v1, p0, Lcom/android/contacts/editor/KindSectionView$4;->val$editor:Lcom/android/contacts/editor/Editor;

    # invokes: Lcom/android/contacts/editor/KindSectionView;->delete(Lcom/android/contacts/editor/Editor;)V
    invoke-static {v0, v1}, Lcom/android/contacts/editor/KindSectionView;->access$100(Lcom/android/contacts/editor/KindSectionView;Lcom/android/contacts/editor/Editor;)V

    return-void
.end method
