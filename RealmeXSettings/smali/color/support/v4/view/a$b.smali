.class Lcolor/support/v4/view/a$b;
.super Lcolor/support/v4/view/a$a;
.source "ColorViewCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcolor/support/v4/view/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 82
    invoke-direct {p0}, Lcolor/support/v4/view/a$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)I
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 87
    invoke-virtual {p1}, Landroid/view/View;->getTextAlignment()I

    move-result p1

    return p1
.end method

.method public final a(Landroid/view/View;I)V
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 93
    invoke-virtual {p1, p2}, Landroid/view/View;->setTextAlignment(I)V

    return-void
.end method
