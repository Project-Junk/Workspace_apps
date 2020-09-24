.class public final Landroidx/core/view/MenuKt$children$1;
.super Ljava/lang/Object;
.source "Menu.kt"

# interfaces
.implements La/g/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/core/view/MenuKt;->getChildren(Landroid/view/Menu;)La/g/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "La/g/a<",
        "Landroid/view/MenuItem;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic receiver$0:Landroid/view/Menu;


# direct methods
.method constructor <init>(Landroid/view/Menu;)V
    .locals 0

    .line 78
    iput-object p1, p0, Landroidx/core/view/MenuKt$children$1;->receiver$0:Landroid/view/Menu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Landroid/view/MenuItem;",
            ">;"
        }
    .end annotation

    .line 79
    iget-object v0, p0, Landroidx/core/view/MenuKt$children$1;->receiver$0:Landroid/view/Menu;

    invoke-static {v0}, Landroidx/core/view/MenuKt;->iterator(Landroid/view/Menu;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
