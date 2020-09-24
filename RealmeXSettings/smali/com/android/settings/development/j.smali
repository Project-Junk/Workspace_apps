.class public Lcom/android/settings/development/j;
.super Lcom/android/settingslib/development/b;
.source "DefaultLaunchPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/d;


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Lcom/android/settingslib/development/b;-><init>(Landroid/content/Context;)V

    .line 38
    iput-object p2, p0, Lcom/android/settings/development/j;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/android/settings/development/j;->a:Ljava/lang/String;

    return-object v0
.end method
