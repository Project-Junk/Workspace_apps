.class Lcolor/support/a/a$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcolor/support/a/a;->c(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcolor/support/a/a;


# direct methods
.method constructor <init>(Lcolor/support/a/a;)V
    .locals 0

    iput-object p1, p0, Lcolor/support/a/a$2;->a:Lcolor/support/a/a;

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

    iget-object p1, p0, Lcolor/support/a/a$2;->a:Lcolor/support/a/a;

    invoke-static {p1}, Lcolor/support/a/a;->c(Lcolor/support/a/a;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object p1

    iget-object p0, p0, Lcolor/support/a/a$2;->a:Lcolor/support/a/a;

    invoke-static {p0}, Lcolor/support/a/a;->b(Lcolor/support/a/a;)Lcolor/support/v7/app/b;

    move-result-object p0

    invoke-interface {p1, p0, p3}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    return-void
.end method
