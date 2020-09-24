.class public final Lcolor/support/v4/view/a;
.super Ljava/lang/Object;
.source "ColorViewCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcolor/support/v4/view/a$c;,
        Lcolor/support/v4/view/a$b;,
        Lcolor/support/v4/view/a$a;,
        Lcolor/support/v4/view/a$d;
    }
.end annotation


# static fields
.field static final a:Lcolor/support/v4/view/a$d;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 116
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    .line 118
    new-instance v0, Lcolor/support/v4/view/a$c;

    invoke-direct {v0}, Lcolor/support/v4/view/a$c;-><init>()V

    sput-object v0, Lcolor/support/v4/view/a;->a:Lcolor/support/v4/view/a$d;

    return-void

    :cond_0
    const/16 v1, 0x10

    if-lt v0, v1, :cond_1

    .line 120
    new-instance v0, Lcolor/support/v4/view/a$b;

    invoke-direct {v0}, Lcolor/support/v4/view/a$b;-><init>()V

    sput-object v0, Lcolor/support/v4/view/a;->a:Lcolor/support/v4/view/a$d;

    return-void

    .line 122
    :cond_1
    new-instance v0, Lcolor/support/v4/view/a$a;

    invoke-direct {v0}, Lcolor/support/v4/view/a$a;-><init>()V

    sput-object v0, Lcolor/support/v4/view/a;->a:Lcolor/support/v4/view/a$d;

    return-void
.end method

.method public static a(Landroid/view/View;)I
    .locals 1

    .line 131
    sget-object v0, Lcolor/support/v4/view/a;->a:Lcolor/support/v4/view/a$d;

    invoke-interface {v0, p0}, Lcolor/support/v4/view/a$d;->a(Landroid/view/View;)I

    move-result p0

    return p0
.end method

.method public static a(Landroid/view/View;I)V
    .locals 1

    .line 139
    sget-object v0, Lcolor/support/v4/view/a;->a:Lcolor/support/v4/view/a$d;

    invoke-interface {v0, p0, p1}, Lcolor/support/v4/view/a$d;->a(Landroid/view/View;I)V

    return-void
.end method

.method public static a()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static b(Landroid/view/View;)I
    .locals 1

    .line 147
    sget-object v0, Lcolor/support/v4/view/a;->a:Lcolor/support/v4/view/a$d;

    invoke-interface {v0, p0}, Lcolor/support/v4/view/a$d;->b(Landroid/view/View;)I

    move-result p0

    return p0
.end method
