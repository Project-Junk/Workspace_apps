.class Lcolor/support/v7/app/AlertController$AlertParams$4;
.super Ljava/lang/Object;
.source "AlertController.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcolor/support/v7/app/AlertController$AlertParams;->createListView(Lcolor/support/v7/app/AlertController;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcolor/support/v7/app/AlertController$AlertParams;

.field final synthetic val$dialog:Lcolor/support/v7/app/AlertController;

.field final synthetic val$listView:Lcolor/support/v7/app/AlertController$RecycleListView;


# direct methods
.method constructor <init>(Lcolor/support/v7/app/AlertController$AlertParams;Lcolor/support/v7/app/AlertController$RecycleListView;Lcolor/support/v7/app/AlertController;)V
    .locals 0

    .line 1342
    iput-object p1, p0, Lcolor/support/v7/app/AlertController$AlertParams$4;->this$0:Lcolor/support/v7/app/AlertController$AlertParams;

    iput-object p2, p0, Lcolor/support/v7/app/AlertController$AlertParams$4;->val$listView:Lcolor/support/v7/app/AlertController$RecycleListView;

    iput-object p3, p0, Lcolor/support/v7/app/AlertController$AlertParams$4;->val$dialog:Lcolor/support/v7/app/AlertController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 1345
    iget-object p1, p0, Lcolor/support/v7/app/AlertController$AlertParams$4;->this$0:Lcolor/support/v7/app/AlertController$AlertParams;

    iget-object p1, p1, Lcolor/support/v7/app/AlertController$AlertParams;->mCheckedItems:[Z

    if-eqz p1, :cond_0

    .line 1346
    iget-object p1, p0, Lcolor/support/v7/app/AlertController$AlertParams$4;->this$0:Lcolor/support/v7/app/AlertController$AlertParams;

    iget-object p1, p1, Lcolor/support/v7/app/AlertController$AlertParams;->mCheckedItems:[Z

    iget-object p2, p0, Lcolor/support/v7/app/AlertController$AlertParams$4;->val$listView:Lcolor/support/v7/app/AlertController$RecycleListView;

    invoke-virtual {p2, p3}, Lcolor/support/v7/app/AlertController$RecycleListView;->isItemChecked(I)Z

    move-result p2

    aput-boolean p2, p1, p3

    .line 1348
    :cond_0
    iget-object p1, p0, Lcolor/support/v7/app/AlertController$AlertParams$4;->this$0:Lcolor/support/v7/app/AlertController$AlertParams;

    iget-object p1, p1, Lcolor/support/v7/app/AlertController$AlertParams;->mOnCheckboxClickListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    iget-object p2, p0, Lcolor/support/v7/app/AlertController$AlertParams$4;->val$dialog:Lcolor/support/v7/app/AlertController;

    iget-object p2, p2, Lcolor/support/v7/app/AlertController;->mDialog:Landroidx/appcompat/app/AppCompatDialog;

    iget-object p4, p0, Lcolor/support/v7/app/AlertController$AlertParams$4;->val$listView:Lcolor/support/v7/app/AlertController$RecycleListView;

    .line 1349
    invoke-virtual {p4, p3}, Lcolor/support/v7/app/AlertController$RecycleListView;->isItemChecked(I)Z

    move-result p4

    .line 1348
    invoke-interface {p1, p2, p3, p4}, Landroid/content/DialogInterface$OnMultiChoiceClickListener;->onClick(Landroid/content/DialogInterface;IZ)V

    return-void
.end method
