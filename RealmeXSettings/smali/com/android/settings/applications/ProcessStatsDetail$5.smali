.class final Lcom/android/settings/applications/ProcessStatsDetail$5;
.super Ljava/lang/Object;
.source "ProcessStatsDetail.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/ProcessStatsDetail;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/android/settings/applications/ProcessStatsDetail;


# direct methods
.method constructor <init>(Lcom/android/settings/applications/ProcessStatsDetail;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 430
    iput-object p1, p0, Lcom/android/settings/applications/ProcessStatsDetail$5;->c:Lcom/android/settings/applications/ProcessStatsDetail;

    iput-object p2, p0, Lcom/android/settings/applications/ProcessStatsDetail$5;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/settings/applications/ProcessStatsDetail$5;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 432
    iget-object p1, p0, Lcom/android/settings/applications/ProcessStatsDetail$5;->c:Lcom/android/settings/applications/ProcessStatsDetail;

    iget-object p2, p0, Lcom/android/settings/applications/ProcessStatsDetail$5;->a:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/settings/applications/ProcessStatsDetail$5;->b:Ljava/lang/String;

    invoke-static {p1, p2, v0}, Lcom/android/settings/applications/ProcessStatsDetail;->b(Lcom/android/settings/applications/ProcessStatsDetail;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
