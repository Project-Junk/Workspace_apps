.class Lcom/color/support/widget/SecurityKeyboardView$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcolor/support/v7/widget/c$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/color/support/widget/SecurityKeyboardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/color/support/widget/SecurityKeyboardView;


# direct methods
.method constructor <init>(Lcom/color/support/widget/SecurityKeyboardView;)V
    .locals 0

    iput-object p1, p0, Lcom/color/support/widget/SecurityKeyboardView$1;->a:Lcom/color/support/widget/SecurityKeyboardView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/WindowManager$LayoutParams;)V
    .locals 0

    iget p0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 p0, p0, 0x2000

    iput p0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const-string p0, "ColorSecurityPopupWindow"

    invoke-virtual {p1, p0}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method
