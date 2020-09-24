.class public final Lcom/android/settings/datetime/timezone/c$a;
.super Ljava/lang/Object;
.source "TimeZoneInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/datetime/timezone/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field final a:Landroid/icu/util/TimeZone;

.field b:Ljava/lang/String;

.field c:Ljava/lang/String;

.field d:Ljava/lang/String;

.field e:Ljava/lang/String;

.field f:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/icu/util/TimeZone;)V
    .locals 1

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 91
    iput-object p1, p0, Lcom/android/settings/datetime/timezone/c$a;->a:Landroid/icu/util/TimeZone;

    return-void

    .line 89
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "TimeZone must not be null!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final a()Lcom/android/settings/datetime/timezone/c;
    .locals 2

    .line 120
    iget-object v0, p0, Lcom/android/settings/datetime/timezone/c$a;->f:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 123
    new-instance v0, Lcom/android/settings/datetime/timezone/c;

    invoke-direct {v0, p0}, Lcom/android/settings/datetime/timezone/c;-><init>(Lcom/android/settings/datetime/timezone/c$a;)V

    return-object v0

    .line 121
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "gmtOffset must not be empty!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
