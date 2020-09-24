.class public Lcom/color/compat/widget/AbsListViewNative;
.super Ljava/lang/Object;


# static fields
.field private static final TAG:Ljava/lang/String; = "AbsListViewNative"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static colorStartSpringback(Landroid/widget/AbsListView;)V
    .locals 1

    :try_start_0
    invoke-static {p0}, Lcom/color/inner/widget/AbsListViewWrapper;->colorStartSpringback(Landroid/widget/AbsListView;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "AbsListViewNative"

    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public static getTouchMode(Landroid/widget/AbsListView;)I
    .locals 1

    :try_start_0
    invoke-static {p0}, Lcom/color/inner/widget/AbsListViewWrapper;->getTouchMode(Landroid/widget/AbsListView;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "AbsListViewNative"

    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method public static setOppoFlingMode(Landroid/widget/AbsListView;I)V
    .locals 0

    :try_start_0
    invoke-static {p0, p1}, Lcom/color/inner/widget/AbsListViewWrapper;->setOppoFlingMode(Landroid/widget/AbsListView;I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "AbsListViewNative"

    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
