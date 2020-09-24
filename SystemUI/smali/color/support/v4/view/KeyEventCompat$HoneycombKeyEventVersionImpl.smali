.class Lcolor/support/v4/view/KeyEventCompat$HoneycombKeyEventVersionImpl;
.super Lcolor/support/v4/view/KeyEventCompat$EclairKeyEventVersionImpl;
.source "KeyEventCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcolor/support/v4/view/KeyEventCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "HoneycombKeyEventVersionImpl"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 146
    invoke-direct {p0}, Lcolor/support/v4/view/KeyEventCompat$EclairKeyEventVersionImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public metaStateHasModifiers(II)Z
    .locals 0

    .line 154
    invoke-static {p1, p2}, Lcolor/support/v4/view/KeyEventCompatHoneycomb;->metaStateHasModifiers(II)Z

    move-result p0

    return p0
.end method

.method public metaStateHasNoModifiers(I)Z
    .locals 0

    .line 159
    invoke-static {p1}, Lcolor/support/v4/view/KeyEventCompatHoneycomb;->metaStateHasNoModifiers(I)Z

    move-result p0

    return p0
.end method

.method public normalizeMetaState(I)I
    .locals 0

    .line 149
    invoke-static {p1}, Lcolor/support/v4/view/KeyEventCompatHoneycomb;->normalizeMetaState(I)I

    move-result p0

    return p0
.end method
