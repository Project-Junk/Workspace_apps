.class public Lcom/color/compat/internal/os/BatterySipperNative;
.super Ljava/lang/Object;
.source "BatterySipperNative.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "BatterySipperNative"


# instance fields
.field private mSipper:Lcom/color/inner/internal/os/BatterySipperWrapper;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method constructor <init>(Lcom/color/inner/internal/os/BatterySipperWrapper;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/color/compat/internal/os/BatterySipperNative;->mSipper:Lcom/color/inner/internal/os/BatterySipperWrapper;

    return-void
.end method
