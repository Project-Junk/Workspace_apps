.class final Lcom/android/settings/applications/ProcessStatsDetail$1;
.super Ljava/lang/Object;
.source "ProcessStatsDetail.java"

# interfaces
.implements Lcom/android/settings/CancellablePreference$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/applications/ProcessStatsDetail;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/ComponentName;

.field final synthetic b:Lcom/android/settings/applications/ProcessStatsDetail;


# direct methods
.method constructor <init>(Lcom/android/settings/applications/ProcessStatsDetail;Landroid/content/ComponentName;)V
    .locals 0

    .line 189
    iput-object p1, p0, Lcom/android/settings/applications/ProcessStatsDetail$1;->b:Lcom/android/settings/applications/ProcessStatsDetail;

    iput-object p2, p0, Lcom/android/settings/applications/ProcessStatsDetail$1;->a:Landroid/content/ComponentName;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 192
    iget-object v0, p0, Lcom/android/settings/applications/ProcessStatsDetail$1;->b:Lcom/android/settings/applications/ProcessStatsDetail;

    iget-object v1, p0, Lcom/android/settings/applications/ProcessStatsDetail$1;->a:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/applications/ProcessStatsDetail$1;->a:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/settings/applications/ProcessStatsDetail;->a(Lcom/android/settings/applications/ProcessStatsDetail;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
