.class public final Lcom/android/settings/datetime/timezone/c;
.super Ljava/lang/Object;
.source "TimeZoneInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/datetime/timezone/c$b;,
        Lcom/android/settings/datetime/timezone/c$a;
    }
.end annotation


# instance fields
.field final a:Ljava/lang/String;

.field final b:Landroid/icu/util/TimeZone;

.field final c:Ljava/lang/String;

.field final d:Ljava/lang/String;

.field final e:Ljava/lang/String;

.field final f:Ljava/lang/String;

.field final g:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Lcom/android/settings/datetime/timezone/c$a;)V
    .locals 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1079
    iget-object v0, p1, Lcom/android/settings/datetime/timezone/c$a;->a:Landroid/icu/util/TimeZone;

    .line 42
    iput-object v0, p0, Lcom/android/settings/datetime/timezone/c;->b:Landroid/icu/util/TimeZone;

    .line 43
    iget-object v0, p0, Lcom/android/settings/datetime/timezone/c;->b:Landroid/icu/util/TimeZone;

    invoke-virtual {v0}, Landroid/icu/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/datetime/timezone/c;->a:Ljava/lang/String;

    .line 2079
    iget-object v0, p1, Lcom/android/settings/datetime/timezone/c$a;->b:Ljava/lang/String;

    .line 44
    iput-object v0, p0, Lcom/android/settings/datetime/timezone/c;->c:Ljava/lang/String;

    .line 3079
    iget-object v0, p1, Lcom/android/settings/datetime/timezone/c$a;->c:Ljava/lang/String;

    .line 45
    iput-object v0, p0, Lcom/android/settings/datetime/timezone/c;->d:Ljava/lang/String;

    .line 4079
    iget-object v0, p1, Lcom/android/settings/datetime/timezone/c$a;->d:Ljava/lang/String;

    .line 46
    iput-object v0, p0, Lcom/android/settings/datetime/timezone/c;->e:Ljava/lang/String;

    .line 5079
    iget-object v0, p1, Lcom/android/settings/datetime/timezone/c$a;->e:Ljava/lang/String;

    .line 47
    iput-object v0, p0, Lcom/android/settings/datetime/timezone/c;->f:Ljava/lang/String;

    .line 6079
    iget-object p1, p1, Lcom/android/settings/datetime/timezone/c$a;->f:Ljava/lang/CharSequence;

    .line 48
    iput-object p1, p0, Lcom/android/settings/datetime/timezone/c;->g:Ljava/lang/CharSequence;

    return-void
.end method
