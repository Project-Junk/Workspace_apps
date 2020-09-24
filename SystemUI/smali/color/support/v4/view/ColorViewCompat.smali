.class public Lcolor/support/v4/view/ColorViewCompat;
.super Ljava/lang/Object;
.source "ColorViewCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcolor/support/v4/view/ColorViewCompat$JbMr1ViewCompatImpl;,
        Lcolor/support/v4/view/ColorViewCompat$JBViewCompatImpl;,
        Lcolor/support/v4/view/ColorViewCompat$BaseViewCompatImpl;,
        Lcolor/support/v4/view/ColorViewCompat$ViewCompatImpl;
    }
.end annotation


# static fields
.field static final IMPL:Lcolor/support/v4/view/ColorViewCompat$ViewCompatImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 116
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    .line 118
    new-instance v0, Lcolor/support/v4/view/ColorViewCompat$JbMr1ViewCompatImpl;

    invoke-direct {v0}, Lcolor/support/v4/view/ColorViewCompat$JbMr1ViewCompatImpl;-><init>()V

    sput-object v0, Lcolor/support/v4/view/ColorViewCompat;->IMPL:Lcolor/support/v4/view/ColorViewCompat$ViewCompatImpl;

    goto :goto_0

    :cond_0
    const/16 v1, 0x10

    if-lt v0, v1, :cond_1

    .line 120
    new-instance v0, Lcolor/support/v4/view/ColorViewCompat$JBViewCompatImpl;

    invoke-direct {v0}, Lcolor/support/v4/view/ColorViewCompat$JBViewCompatImpl;-><init>()V

    sput-object v0, Lcolor/support/v4/view/ColorViewCompat;->IMPL:Lcolor/support/v4/view/ColorViewCompat$ViewCompatImpl;

    goto :goto_0

    .line 122
    :cond_1
    new-instance v0, Lcolor/support/v4/view/ColorViewCompat$BaseViewCompatImpl;

    invoke-direct {v0}, Lcolor/support/v4/view/ColorViewCompat$BaseViewCompatImpl;-><init>()V

    sput-object v0, Lcolor/support/v4/view/ColorViewCompat;->IMPL:Lcolor/support/v4/view/ColorViewCompat$ViewCompatImpl;

    :goto_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getRawLayoutDirection(Landroid/view/View;)I
    .locals 1

    .line 147
    sget-object v0, Lcolor/support/v4/view/ColorViewCompat;->IMPL:Lcolor/support/v4/view/ColorViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0}, Lcolor/support/v4/view/ColorViewCompat$ViewCompatImpl;->getRawLayoutDirection(Landroid/view/View;)I

    move-result p0

    return p0
.end method

.method public static getTextAlignment(Landroid/view/View;)I
    .locals 1

    .line 131
    sget-object v0, Lcolor/support/v4/view/ColorViewCompat;->IMPL:Lcolor/support/v4/view/ColorViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0}, Lcolor/support/v4/view/ColorViewCompat$ViewCompatImpl;->getTextAlignment(Landroid/view/View;)I

    move-result p0

    return p0
.end method

.method public static isVisibleToUser(Landroid/view/View;)Z
    .locals 1

    .line 155
    sget-object v0, Lcolor/support/v4/view/ColorViewCompat;->IMPL:Lcolor/support/v4/view/ColorViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0}, Lcolor/support/v4/view/ColorViewCompat$ViewCompatImpl;->isVisibleToUser(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static setTextAlignment(Landroid/view/View;I)V
    .locals 1

    .line 139
    sget-object v0, Lcolor/support/v4/view/ColorViewCompat;->IMPL:Lcolor/support/v4/view/ColorViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0, p1}, Lcolor/support/v4/view/ColorViewCompat$ViewCompatImpl;->setTextAlignment(Landroid/view/View;I)V

    return-void
.end method
