.class Lcolor/support/v7/internal/widget/ColorAlertLinearLayout$1;
.super Landroid/view/ViewOutlineProvider;
.source "ColorAlertLinearLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcolor/support/v7/internal/widget/ColorAlertLinearLayout;->clipBackground()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcolor/support/v7/internal/widget/ColorAlertLinearLayout;


# direct methods
.method constructor <init>(Lcolor/support/v7/internal/widget/ColorAlertLinearLayout;)V
    .locals 0

    .line 156
    iput-object p1, p0, Lcolor/support/v7/internal/widget/ColorAlertLinearLayout$1;->this$0:Lcolor/support/v7/internal/widget/ColorAlertLinearLayout;

    invoke-direct {p0}, Landroid/view/ViewOutlineProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
    .locals 6

    .line 159
    iget-object p1, p0, Lcolor/support/v7/internal/widget/ColorAlertLinearLayout$1;->this$0:Lcolor/support/v7/internal/widget/ColorAlertLinearLayout;

    invoke-static {p1}, Lcolor/support/v7/internal/widget/ColorAlertLinearLayout;->access$000(Lcolor/support/v7/internal/widget/ColorAlertLinearLayout;)I

    move-result v1

    iget-object p1, p0, Lcolor/support/v7/internal/widget/ColorAlertLinearLayout$1;->this$0:Lcolor/support/v7/internal/widget/ColorAlertLinearLayout;

    invoke-static {p1}, Lcolor/support/v7/internal/widget/ColorAlertLinearLayout;->access$100(Lcolor/support/v7/internal/widget/ColorAlertLinearLayout;)I

    move-result v2

    iget-object p1, p0, Lcolor/support/v7/internal/widget/ColorAlertLinearLayout$1;->this$0:Lcolor/support/v7/internal/widget/ColorAlertLinearLayout;

    invoke-static {p1}, Lcolor/support/v7/internal/widget/ColorAlertLinearLayout;->access$200(Lcolor/support/v7/internal/widget/ColorAlertLinearLayout;)I

    move-result v3

    iget-object p1, p0, Lcolor/support/v7/internal/widget/ColorAlertLinearLayout$1;->this$0:Lcolor/support/v7/internal/widget/ColorAlertLinearLayout;

    invoke-static {p1}, Lcolor/support/v7/internal/widget/ColorAlertLinearLayout;->access$300(Lcolor/support/v7/internal/widget/ColorAlertLinearLayout;)I

    move-result v4

    iget-object p1, p0, Lcolor/support/v7/internal/widget/ColorAlertLinearLayout$1;->this$0:Lcolor/support/v7/internal/widget/ColorAlertLinearLayout;

    invoke-static {p1}, Lcolor/support/v7/internal/widget/ColorAlertLinearLayout;->access$400(Lcolor/support/v7/internal/widget/ColorAlertLinearLayout;)I

    move-result p1

    int-to-float v5, p1

    move-object v0, p2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Outline;->setRoundRect(IIIIF)V

    return-void
.end method