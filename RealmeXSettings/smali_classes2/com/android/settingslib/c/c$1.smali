.class final Lcom/android/settingslib/c/c$1;
.super Ljava/lang/Object;
.source "DisappearAnimationUtils.java"

# interfaces
.implements Lcom/android/settingslib/c/b$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingslib/c/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(II)F
    .locals 4

    sub-int p1, p2, p1

    int-to-double v0, p1

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    .line 55
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    int-to-double p1, p2

    div-double/2addr v0, p1

    double-to-float p1, v0

    return p1
.end method
