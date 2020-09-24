.class public final Lcom/android/settings/applications/RunningProcessesView$a;
.super Ljava/lang/Object;
.source "RunningProcessesView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/RunningProcessesView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field a:Landroid/view/View;

.field public b:Lcom/android/settings/applications/y$c;

.field c:Lcom/android/settings/applications/RunningProcessesView$c;

.field d:J

.field e:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method final a(Landroid/content/Context;Ljava/lang/StringBuilder;)V
    .locals 8

    .line 110
    iget-object v0, p0, Lcom/android/settings/applications/RunningProcessesView$a;->b:Lcom/android/settings/applications/y$c;

    instance-of v1, v0, Lcom/android/settings/applications/y$g;

    const/4 v2, 0x1

    const-string v3, ""

    if-eqz v1, :cond_0

    .line 113
    iget-object v0, p0, Lcom/android/settings/applications/RunningProcessesView$a;->c:Lcom/android/settings/applications/RunningProcessesView$c;

    iget-object v0, v0, Lcom/android/settings/applications/RunningProcessesView$c;->e:Landroid/widget/TextView;

    goto :goto_2

    .line 116
    :cond_0
    iget-object v0, v0, Lcom/android/settings/applications/y$c;->j:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/applications/RunningProcessesView$a;->b:Lcom/android/settings/applications/y$c;

    iget-object v0, v0, Lcom/android/settings/applications/y$c;->j:Ljava/lang/String;

    goto :goto_0

    :cond_1
    move-object v0, v3

    .line 117
    :goto_0
    iget-object v1, p0, Lcom/android/settings/applications/RunningProcessesView$a;->b:Lcom/android/settings/applications/y$c;

    iget-object v1, v1, Lcom/android/settings/applications/y$c;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 118
    iget-object v1, p0, Lcom/android/settings/applications/RunningProcessesView$a;->b:Lcom/android/settings/applications/y$c;

    iput-object v0, v1, Lcom/android/settings/applications/y$c;->k:Ljava/lang/String;

    .line 119
    iget-object v1, p0, Lcom/android/settings/applications/RunningProcessesView$a;->c:Lcom/android/settings/applications/RunningProcessesView$c;

    iget-object v1, v1, Lcom/android/settings/applications/RunningProcessesView$c;->e:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 122
    :cond_2
    iget-object v0, p0, Lcom/android/settings/applications/RunningProcessesView$a;->b:Lcom/android/settings/applications/y$c;

    iget-boolean v0, v0, Lcom/android/settings/applications/y$c;->m:Z

    if-eqz v0, :cond_3

    .line 124
    iget-boolean v0, p0, Lcom/android/settings/applications/RunningProcessesView$a;->e:Z

    if-nez v0, :cond_4

    .line 125
    iput-boolean v2, p0, Lcom/android/settings/applications/RunningProcessesView$a;->e:Z

    .line 126
    iget-object v0, p0, Lcom/android/settings/applications/RunningProcessesView$a;->c:Lcom/android/settings/applications/RunningProcessesView$c;

    iget-object v0, v0, Lcom/android/settings/applications/RunningProcessesView$c;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 128
    :cond_3
    iget-object v0, p0, Lcom/android/settings/applications/RunningProcessesView$a;->b:Lcom/android/settings/applications/y$c;

    instance-of v0, v0, Lcom/android/settings/applications/y$d;

    if-eqz v0, :cond_4

    .line 131
    iget-object v0, p0, Lcom/android/settings/applications/RunningProcessesView$a;->c:Lcom/android/settings/applications/RunningProcessesView$c;

    iget-object v0, v0, Lcom/android/settings/applications/RunningProcessesView$c;->f:Landroid/widget/TextView;

    goto :goto_2

    :cond_4
    :goto_1
    const/4 v0, 0x0

    :goto_2
    if-eqz v0, :cond_8

    const/4 v1, 0x0

    .line 136
    iput-boolean v1, p0, Lcom/android/settings/applications/RunningProcessesView$a;->e:Z

    .line 137
    iget-wide v4, p0, Lcom/android/settings/applications/RunningProcessesView$a;->d:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-ltz v4, :cond_5

    .line 141
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/android/settings/applications/RunningProcessesView$a;->d:J

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    .line 140
    invoke-static {p2, v1, v2}, Landroid/text/format/DateUtils;->formatElapsedTime(Ljava/lang/StringBuilder;J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 144
    :cond_5
    iget-object p2, p0, Lcom/android/settings/applications/RunningProcessesView$a;->b:Lcom/android/settings/applications/y$c;

    instance-of v4, p2, Lcom/android/settings/applications/y$d;

    if-eqz v4, :cond_6

    .line 145
    check-cast p2, Lcom/android/settings/applications/y$d;

    iget-object p2, p2, Lcom/android/settings/applications/y$d;->q:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-lez p2, :cond_6

    move v1, v2

    :cond_6
    if-eqz v1, :cond_7

    .line 148
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f12141f

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 151
    :cond_7
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_8
    return-void
.end method
