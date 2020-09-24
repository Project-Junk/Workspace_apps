.class Lcolor/support/dialog/ColorListDialog$2;
.super Ljava/lang/Object;
.source "ColorListDialog.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcolor/support/dialog/ColorListDialog;->setupListPanel(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcolor/support/dialog/ColorListDialog;


# direct methods
.method constructor <init>(Lcolor/support/dialog/ColorListDialog;)V
    .locals 0

    .line 242
    iput-object p1, p0, Lcolor/support/dialog/ColorListDialog$2;->this$0:Lcolor/support/dialog/ColorListDialog;

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

    .line 245
    iget-object p1, p0, Lcolor/support/dialog/ColorListDialog$2;->this$0:Lcolor/support/dialog/ColorListDialog;

    invoke-static {p1}, Lcolor/support/dialog/ColorListDialog;->access$200(Lcolor/support/dialog/ColorListDialog;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object p1

    iget-object p0, p0, Lcolor/support/dialog/ColorListDialog$2;->this$0:Lcolor/support/dialog/ColorListDialog;

    invoke-static {p0}, Lcolor/support/dialog/ColorListDialog;->access$100(Lcolor/support/dialog/ColorListDialog;)Lcolor/support/v7/app/AlertDialog;

    move-result-object p0

    invoke-interface {p1, p0, p3}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    return-void
.end method
