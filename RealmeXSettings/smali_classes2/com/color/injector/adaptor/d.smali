.class public final Lcom/color/injector/adaptor/d;
.super Ljava/lang/Object;
.source "BuildConfig.java"


# static fields
.field public static final a:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "true"

    .line 7
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/color/injector/adaptor/d;->a:Z

    return-void
.end method
