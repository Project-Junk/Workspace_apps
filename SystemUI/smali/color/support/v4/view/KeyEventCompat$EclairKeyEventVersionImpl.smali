.class Lcolor/support/v4/view/KeyEventCompat$EclairKeyEventVersionImpl;
.super Lcolor/support/v4/view/KeyEventCompat$BaseKeyEventVersionImpl;
.source "KeyEventCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcolor/support/v4/view/KeyEventCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "EclairKeyEventVersionImpl"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 120
    invoke-direct {p0}, Lcolor/support/v4/view/KeyEventCompat$BaseKeyEventVersionImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public dispatch(Landroid/view/KeyEvent;Landroid/view/KeyEvent$Callback;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 139
    invoke-static {p1, p2, p3, p4}, Lcolor/support/v4/view/KeyEventCompatEclair;->dispatch(Landroid/view/KeyEvent;Landroid/view/KeyEvent$Callback;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public getKeyDispatcherState(Landroid/view/View;)Ljava/lang/Object;
    .locals 0

    .line 133
    invoke-static {p1}, Lcolor/support/v4/view/KeyEventCompatEclair;->getKeyDispatcherState(Landroid/view/View;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public isTracking(Landroid/view/KeyEvent;)Z
    .locals 0

    .line 128
    invoke-static {p1}, Lcolor/support/v4/view/KeyEventCompatEclair;->isTracking(Landroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public startTracking(Landroid/view/KeyEvent;)V
    .locals 0

    .line 123
    invoke-static {p1}, Lcolor/support/v4/view/KeyEventCompatEclair;->startTracking(Landroid/view/KeyEvent;)V

    return-void
.end method
