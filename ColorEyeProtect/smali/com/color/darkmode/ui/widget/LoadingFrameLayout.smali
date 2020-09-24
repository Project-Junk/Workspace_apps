.class public final Lcom/color/darkmode/ui/widget/LoadingFrameLayout;
.super Landroid/widget/FrameLayout;

# interfaces
.implements Lcom/color/screenshot/ColorLongshotUnsupported;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, La/d/b/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, La/d/b/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "attrs"

    invoke-static {p2, v0}, La/d/b/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/color/darkmode/ui/widget/LoadingFrameLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public isLongshotUnsupported()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
