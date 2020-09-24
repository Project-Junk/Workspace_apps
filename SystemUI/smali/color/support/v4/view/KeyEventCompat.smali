.class public Lcolor/support/v4/view/KeyEventCompat;
.super Ljava/lang/Object;
.source "KeyEventCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcolor/support/v4/view/KeyEventCompat$HoneycombKeyEventVersionImpl;,
        Lcolor/support/v4/view/KeyEventCompat$EclairKeyEventVersionImpl;,
        Lcolor/support/v4/view/KeyEventCompat$BaseKeyEventVersionImpl;,
        Lcolor/support/v4/view/KeyEventCompat$KeyEventVersionImpl;
    }
.end annotation


# static fields
.field static final IMPL:Lcolor/support/v4/view/KeyEventCompat$KeyEventVersionImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 168
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 169
    new-instance v0, Lcolor/support/v4/view/KeyEventCompat$HoneycombKeyEventVersionImpl;

    invoke-direct {v0}, Lcolor/support/v4/view/KeyEventCompat$HoneycombKeyEventVersionImpl;-><init>()V

    sput-object v0, Lcolor/support/v4/view/KeyEventCompat;->IMPL:Lcolor/support/v4/view/KeyEventCompat$KeyEventVersionImpl;

    goto :goto_0

    .line 171
    :cond_0
    new-instance v0, Lcolor/support/v4/view/KeyEventCompat$BaseKeyEventVersionImpl;

    invoke-direct {v0}, Lcolor/support/v4/view/KeyEventCompat$BaseKeyEventVersionImpl;-><init>()V

    sput-object v0, Lcolor/support/v4/view/KeyEventCompat;->IMPL:Lcolor/support/v4/view/KeyEventCompat$KeyEventVersionImpl;

    :goto_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static dispatch(Landroid/view/KeyEvent;Landroid/view/KeyEvent$Callback;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    .line 211
    sget-object v0, Lcolor/support/v4/view/KeyEventCompat;->IMPL:Lcolor/support/v4/view/KeyEventCompat$KeyEventVersionImpl;

    invoke-interface {v0, p0, p1, p2, p3}, Lcolor/support/v4/view/KeyEventCompat$KeyEventVersionImpl;->dispatch(Landroid/view/KeyEvent;Landroid/view/KeyEvent$Callback;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static getKeyDispatcherState(Landroid/view/View;)Ljava/lang/Object;
    .locals 1

    .line 206
    sget-object v0, Lcolor/support/v4/view/KeyEventCompat;->IMPL:Lcolor/support/v4/view/KeyEventCompat$KeyEventVersionImpl;

    invoke-interface {v0, p0}, Lcolor/support/v4/view/KeyEventCompat$KeyEventVersionImpl;->getKeyDispatcherState(Landroid/view/View;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static hasModifiers(Landroid/view/KeyEvent;I)Z
    .locals 1

    .line 190
    sget-object v0, Lcolor/support/v4/view/KeyEventCompat;->IMPL:Lcolor/support/v4/view/KeyEventCompat$KeyEventVersionImpl;

    invoke-virtual {p0}, Landroid/view/KeyEvent;->getMetaState()I

    move-result p0

    invoke-interface {v0, p0, p1}, Lcolor/support/v4/view/KeyEventCompat$KeyEventVersionImpl;->metaStateHasModifiers(II)Z

    move-result p0

    return p0
.end method

.method public static hasNoModifiers(Landroid/view/KeyEvent;)Z
    .locals 1

    .line 194
    sget-object v0, Lcolor/support/v4/view/KeyEventCompat;->IMPL:Lcolor/support/v4/view/KeyEventCompat$KeyEventVersionImpl;

    invoke-virtual {p0}, Landroid/view/KeyEvent;->getMetaState()I

    move-result p0

    invoke-interface {v0, p0}, Lcolor/support/v4/view/KeyEventCompat$KeyEventVersionImpl;->metaStateHasNoModifiers(I)Z

    move-result p0

    return p0
.end method

.method public static isTracking(Landroid/view/KeyEvent;)Z
    .locals 1

    .line 202
    sget-object v0, Lcolor/support/v4/view/KeyEventCompat;->IMPL:Lcolor/support/v4/view/KeyEventCompat$KeyEventVersionImpl;

    invoke-interface {v0, p0}, Lcolor/support/v4/view/KeyEventCompat$KeyEventVersionImpl;->isTracking(Landroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public static metaStateHasModifiers(II)Z
    .locals 1

    .line 182
    sget-object v0, Lcolor/support/v4/view/KeyEventCompat;->IMPL:Lcolor/support/v4/view/KeyEventCompat$KeyEventVersionImpl;

    invoke-interface {v0, p0, p1}, Lcolor/support/v4/view/KeyEventCompat$KeyEventVersionImpl;->metaStateHasModifiers(II)Z

    move-result p0

    return p0
.end method

.method public static metaStateHasNoModifiers(I)Z
    .locals 1

    .line 186
    sget-object v0, Lcolor/support/v4/view/KeyEventCompat;->IMPL:Lcolor/support/v4/view/KeyEventCompat$KeyEventVersionImpl;

    invoke-interface {v0, p0}, Lcolor/support/v4/view/KeyEventCompat$KeyEventVersionImpl;->metaStateHasNoModifiers(I)Z

    move-result p0

    return p0
.end method

.method public static normalizeMetaState(I)I
    .locals 1

    .line 178
    sget-object v0, Lcolor/support/v4/view/KeyEventCompat;->IMPL:Lcolor/support/v4/view/KeyEventCompat$KeyEventVersionImpl;

    invoke-interface {v0, p0}, Lcolor/support/v4/view/KeyEventCompat$KeyEventVersionImpl;->normalizeMetaState(I)I

    move-result p0

    return p0
.end method

.method public static startTracking(Landroid/view/KeyEvent;)V
    .locals 1

    .line 198
    sget-object v0, Lcolor/support/v4/view/KeyEventCompat;->IMPL:Lcolor/support/v4/view/KeyEventCompat$KeyEventVersionImpl;

    invoke-interface {v0, p0}, Lcolor/support/v4/view/KeyEventCompat$KeyEventVersionImpl;->startTracking(Landroid/view/KeyEvent;)V

    return-void
.end method
