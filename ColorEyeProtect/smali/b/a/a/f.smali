.class public Lb/a/a/f;
.super Lb/a/a/h;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lb/a/a/h;-><init>()V

    return-void
.end method


# virtual methods
.method public final c()Z
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    check-cast p0, Ljava/lang/Throwable;

    throw p0
.end method
