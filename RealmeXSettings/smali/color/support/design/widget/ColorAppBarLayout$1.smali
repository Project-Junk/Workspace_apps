.class Lcolor/support/design/widget/ColorAppBarLayout$1;
.super Ljava/lang/Object;
.source "ColorAppBarLayout.java"

# interfaces
.implements Landroidx/core/view/OnApplyWindowInsetsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcolor/support/design/widget/ColorAppBarLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcolor/support/design/widget/ColorAppBarLayout;


# direct methods
.method constructor <init>(Lcolor/support/design/widget/ColorAppBarLayout;)V
    .locals 0

    .line 186
    iput-object p1, p0, Lcolor/support/design/widget/ColorAppBarLayout$1;->this$0:Lcolor/support/design/widget/ColorAppBarLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onApplyWindowInsets(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .locals 0

    .line 190
    iget-object p1, p0, Lcolor/support/design/widget/ColorAppBarLayout$1;->this$0:Lcolor/support/design/widget/ColorAppBarLayout;

    invoke-virtual {p1, p2}, Lcolor/support/design/widget/ColorAppBarLayout;->onWindowInsetChanged(Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;

    move-result-object p1

    return-object p1
.end method
