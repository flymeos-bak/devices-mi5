.class Lcom/miui/internal/app/AlertControllerImpl$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/internal/app/AlertControllerImpl;->u()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic cE:Lcom/miui/internal/app/AlertControllerImpl;

.field final synthetic cG:Landroid/widget/AdapterView$OnItemClickListener;


# direct methods
.method constructor <init>(Lcom/miui/internal/app/AlertControllerImpl;Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 0

    .prologue
    .line 677
    iput-object p1, p0, Lcom/miui/internal/app/AlertControllerImpl$5;->cE:Lcom/miui/internal/app/AlertControllerImpl;

    iput-object p2, p0, Lcom/miui/internal/app/AlertControllerImpl$5;->cG:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 680
    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl$5;->cG:Landroid/widget/AdapterView$OnItemClickListener;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemClickListener;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 681
    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl$5;->cE:Lcom/miui/internal/app/AlertControllerImpl;

    invoke-static {v0}, Lcom/miui/internal/app/AlertControllerImpl;->j(Lcom/miui/internal/app/AlertControllerImpl;)Landroid/widget/Button;

    move-result-object v1

    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl$5;->cE:Lcom/miui/internal/app/AlertControllerImpl;

    invoke-static {v0}, Lcom/miui/internal/app/AlertControllerImpl;->i(Lcom/miui/internal/app/AlertControllerImpl;)Lmiui/widget/EditableListViewWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/widget/EditableListViewWrapper;->isAllItemsChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lmiui/R$string;->deselect_all:I

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(I)V

    .line 683
    return-void

    .line 681
    :cond_0
    sget v0, Lmiui/R$string;->select_all:I

    goto :goto_0
.end method