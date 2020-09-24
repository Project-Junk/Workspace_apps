.class final Lcom/android/settings/development/gamedriver/GameDriverAppPreferenceController$a;
.super Ljava/lang/Object;
.source "GameDriverAppPreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/development/gamedriver/GameDriverAppPreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final a:Landroid/content/pm/ApplicationInfo;

.field final b:Ljava/lang/String;

.field final synthetic c:Lcom/android/settings/development/gamedriver/GameDriverAppPreferenceController;


# direct methods
.method constructor <init>(Lcom/android/settings/development/gamedriver/GameDriverAppPreferenceController;Landroid/content/pm/PackageManager;Landroid/content/pm/ApplicationInfo;)V
    .locals 0

    .line 195
    iput-object p1, p0, Lcom/android/settings/development/gamedriver/GameDriverAppPreferenceController$a;->c:Lcom/android/settings/development/gamedriver/GameDriverAppPreferenceController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 196
    iput-object p3, p0, Lcom/android/settings/development/gamedriver/GameDriverAppPreferenceController$a;->a:Landroid/content/pm/ApplicationInfo;

    .line 197
    invoke-virtual {p2, p3}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/development/gamedriver/GameDriverAppPreferenceController$a;->b:Ljava/lang/String;

    return-void
.end method
