.class Lcolor/support/b/a/a$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcolor/support/b/a/a$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcolor/support/b/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)I
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    invoke-virtual {p1}, Landroid/view/View;->getLayoutDirection()I

    move-result p0

    return p0
.end method

.method public a(Landroid/view/View;I)V
    .locals 0

    return-void
.end method
