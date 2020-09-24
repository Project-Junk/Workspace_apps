.class Lcolor/support/v7/internal/widget/ColorSpinner$1;
.super Ljava/lang/Object;
.source "ColorSpinner.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcolor/support/v7/internal/widget/ColorSpinner;->setTextSize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcolor/support/v7/internal/widget/ColorSpinner;


# direct methods
.method constructor <init>(Lcolor/support/v7/internal/widget/ColorSpinner;)V
    .locals 0

    .line 359
    iput-object p1, p0, Lcolor/support/v7/internal/widget/ColorSpinner$1;->this$0:Lcolor/support/v7/internal/widget/ColorSpinner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .line 362
    iget-object p0, p0, Lcolor/support/v7/internal/widget/ColorSpinner$1;->this$0:Lcolor/support/v7/internal/widget/ColorSpinner;

    invoke-virtual {p0}, Lcolor/support/v7/internal/widget/ColorSpinner;->requestLayout()V

    return-void
.end method
