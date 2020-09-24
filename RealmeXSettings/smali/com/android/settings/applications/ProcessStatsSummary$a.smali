.class final Lcom/android/settings/applications/ProcessStatsSummary$a;
.super Ljava/lang/Object;
.source "ProcessStatsSummary.java"

# interfaces
.implements Lcom/android/settings/dashboard/f$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/ProcessStatsSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/android/settings/dashboard/f;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/dashboard/f;)V
    .locals 0

    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 152
    iput-object p1, p0, Lcom/android/settings/applications/ProcessStatsSummary$a;->a:Landroid/content/Context;

    .line 153
    iput-object p2, p0, Lcom/android/settings/applications/ProcessStatsSummary$a;->b:Lcom/android/settings/dashboard/f;

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 6

    if-eqz p1, :cond_0

    .line 159
    new-instance p1, Lcom/android/settings/applications/v;

    iget-object v0, p0, Lcom/android/settings/applications/ProcessStatsSummary$a;->a:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, Lcom/android/settings/applications/v;-><init>(Landroid/content/Context;Z)V

    .line 160
    sget-object v0, Lcom/android/settings/applications/ProcessStatsBase;->a:[J

    aget-wide v2, v0, v1

    invoke-virtual {p1, v2, v3}, Lcom/android/settings/applications/v;->a(J)V

    .line 1118
    iget-object p1, p1, Lcom/android/settings/applications/v;->d:Lcom/android/settings/applications/v$a;

    .line 162
    iget-object v0, p0, Lcom/android/settings/applications/ProcessStatsSummary$a;->a:Landroid/content/Context;

    iget-wide v2, p1, Lcom/android/settings/applications/v$a;->a:D

    double-to-long v2, v2

    invoke-static {v0, v2, v3}, Landroid/text/format/Formatter;->formatShortFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    .line 164
    iget-object v2, p0, Lcom/android/settings/applications/ProcessStatsSummary$a;->a:Landroid/content/Context;

    iget-wide v3, p1, Lcom/android/settings/applications/v$a;->c:D

    double-to-long v3, v3

    invoke-static {v2, v3, v4}, Landroid/text/format/Formatter;->formatShortFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object p1

    .line 166
    iget-object v2, p0, Lcom/android/settings/applications/ProcessStatsSummary$a;->b:Lcom/android/settings/dashboard/f;

    iget-object v3, p0, Lcom/android/settings/applications/ProcessStatsSummary$a;->a:Landroid/content/Context;

    const v4, 0x7f120d71

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v0, v5, v1

    const/4 v0, 0x1

    aput-object p1, v5, v0

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p0, p1}, Lcom/android/settings/dashboard/f;->a(Lcom/android/settings/dashboard/f$b;Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
