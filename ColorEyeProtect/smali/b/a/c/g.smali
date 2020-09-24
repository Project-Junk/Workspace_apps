.class public final Lb/a/c/g;
.super Lb/a/c/n;


# static fields
.field public static final a:Lb/a/c/g;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lb/a/c/g;

    invoke-direct {v0}, Lb/a/c/g;-><init>()V

    sput-object v0, Lb/a/c/g;->a:Lb/a/c/g;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lb/a/c/n;-><init>()V

    return-void
.end method


# virtual methods
.method public a()J
    .locals 2

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    return-wide v0
.end method
