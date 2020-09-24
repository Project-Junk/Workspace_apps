.class public final Lcom/android/settings/backup/c;
.super Ljava/lang/Object;
.source "PrivacySettingsConfigData.java"


# static fields
.field private static g:Lcom/android/settings/backup/c;


# instance fields
.field a:Z

.field b:Z

.field c:Landroid/content/Intent;

.field d:Ljava/lang/String;

.field e:Landroid/content/Intent;

.field f:Ljava/lang/CharSequence;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 33
    iput-boolean v0, p0, Lcom/android/settings/backup/c;->a:Z

    .line 34
    iput-boolean v0, p0, Lcom/android/settings/backup/c;->b:Z

    const/4 v0, 0x0

    .line 35
    iput-object v0, p0, Lcom/android/settings/backup/c;->c:Landroid/content/Intent;

    .line 36
    iput-object v0, p0, Lcom/android/settings/backup/c;->d:Ljava/lang/String;

    .line 37
    iput-object v0, p0, Lcom/android/settings/backup/c;->e:Landroid/content/Intent;

    .line 38
    iput-object v0, p0, Lcom/android/settings/backup/c;->f:Ljava/lang/CharSequence;

    return-void
.end method

.method public static a()Lcom/android/settings/backup/c;
    .locals 1

    .line 42
    sget-object v0, Lcom/android/settings/backup/c;->g:Lcom/android/settings/backup/c;

    if-nez v0, :cond_0

    .line 43
    new-instance v0, Lcom/android/settings/backup/c;

    invoke-direct {v0}, Lcom/android/settings/backup/c;-><init>()V

    sput-object v0, Lcom/android/settings/backup/c;->g:Lcom/android/settings/backup/c;

    .line 45
    :cond_0
    sget-object v0, Lcom/android/settings/backup/c;->g:Lcom/android/settings/backup/c;

    return-object v0
.end method
