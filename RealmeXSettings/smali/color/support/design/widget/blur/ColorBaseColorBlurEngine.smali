.class abstract Lcolor/support/design/widget/blur/ColorBaseColorBlurEngine;
.super Ljava/lang/Object;
.source "ColorBaseColorBlurEngine.java"

# interfaces
.implements Lcolor/support/design/widget/blur/ColorBlurEngine;


# instance fields
.field final mAsyncTasks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/os/AsyncTask;",
            ">;"
        }
    .end annotation
.end field

.field final mColorBlurConfig:Lcolor/support/design/widget/blur/ColorBlurConfig;


# direct methods
.method public constructor <init>(Lcolor/support/design/widget/blur/ColorBlurConfig;)V
    .locals 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcolor/support/design/widget/blur/ColorBaseColorBlurEngine;->mAsyncTasks:Ljava/util/List;

    .line 16
    iput-object p1, p0, Lcolor/support/design/widget/blur/ColorBaseColorBlurEngine;->mColorBlurConfig:Lcolor/support/design/widget/blur/ColorBlurConfig;

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 3

    .line 22
    iget-object v0, p0, Lcolor/support/design/widget/blur/ColorBaseColorBlurEngine;->mAsyncTasks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/AsyncTask;

    const/4 v2, 0x1

    .line 23
    invoke-virtual {v1, v2}, Landroid/os/AsyncTask;->cancel(Z)Z

    goto :goto_0

    .line 25
    :cond_0
    iget-object v0, p0, Lcolor/support/design/widget/blur/ColorBaseColorBlurEngine;->mAsyncTasks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method
