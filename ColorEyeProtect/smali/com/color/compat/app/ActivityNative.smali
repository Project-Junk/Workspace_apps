.class public Lcom/color/compat/app/ActivityNative;
.super Ljava/lang/Object;


# static fields
.field public static final TAG:Ljava/lang/String; = "ActivityNative"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convertFromTranslucent(Landroid/app/Activity;)V
    .locals 0

    invoke-static {p0}, Lcom/color/inner/app/ActivityWrapper;->convertFromTranslucent(Landroid/app/Activity;)V

    return-void
.end method

.method public static convertToTranslucent(Landroid/app/Activity;Landroid/app/ActivityOptions;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/color/inner/app/ActivityWrapper;->convertToTranslucent(Landroid/app/Activity;Landroid/app/ActivityOptions;)Z

    move-result p0

    return p0
.end method
