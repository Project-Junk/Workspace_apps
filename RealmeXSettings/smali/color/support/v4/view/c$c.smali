.class final Lcolor/support/v4/view/c$c;
.super Lcolor/support/v4/view/c$b;
.source "KeyEventCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcolor/support/v4/view/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "c"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 146
    invoke-direct {p0}, Lcolor/support/v4/view/c$b;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)I
    .locals 0

    .line 1026
    invoke-static {p1}, Landroid/view/KeyEvent;->normalizeMetaState(I)I

    move-result p1

    return p1
.end method

.method public final b(I)Z
    .locals 0

    .line 1034
    invoke-static {p1}, Landroid/view/KeyEvent;->metaStateHasNoModifiers(I)Z

    move-result p1

    return p1
.end method
