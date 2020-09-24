.class final Lcom/android/settings/notification/AbstractZenModePreferenceController$b;
.super Ljava/lang/Object;
.source "AbstractZenModePreferenceController.java"


# annotations
.annotation build Landroidx/annotation/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/notification/AbstractZenModePreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# instance fields
.field final a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 171
    iput-object p1, p0, Lcom/android/settings/notification/AbstractZenModePreferenceController$b;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method protected final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 175
    iget-object v0, p0, Lcom/android/settings/notification/AbstractZenModePreferenceController$b;->a:Landroid/content/Context;

    invoke-static {v0, p1}, Landroid/service/notification/ZenModeConfig;->getOwnerCaption(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
