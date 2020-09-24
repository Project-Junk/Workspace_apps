.class final Lcom/coloros/settings/feature/othersettings/datetime/controller/ColorTimeSetPreferenceController$a;
.super Landroid/os/AsyncTask;
.source "ColorTimeSetPreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/feature/othersettings/datetime/controller/ColorTimeSetPreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/coloros/settings/feature/othersettings/datetime/ColorDateTimeSettingFragment;",
            ">;"
        }
    .end annotation
.end field

.field private b:J


# direct methods
.method private constructor <init>(Lcom/coloros/settings/feature/othersettings/datetime/ColorDateTimeSettingFragment;J)V
    .locals 1

    .line 189
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 190
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/coloros/settings/feature/othersettings/datetime/controller/ColorTimeSetPreferenceController$a;->a:Ljava/lang/ref/WeakReference;

    .line 191
    iput-wide p2, p0, Lcom/coloros/settings/feature/othersettings/datetime/controller/ColorTimeSetPreferenceController$a;->b:J

    return-void
.end method

.method synthetic constructor <init>(Lcom/coloros/settings/feature/othersettings/datetime/ColorDateTimeSettingFragment;JB)V
    .locals 0

    .line 185
    invoke-direct {p0, p1, p2, p3}, Lcom/coloros/settings/feature/othersettings/datetime/controller/ColorTimeSetPreferenceController$a;-><init>(Lcom/coloros/settings/feature/othersettings/datetime/ColorDateTimeSettingFragment;J)V

    return-void
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 2196
    iget-object p1, p0, Lcom/coloros/settings/feature/othersettings/datetime/controller/ColorTimeSetPreferenceController$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/coloros/settings/feature/othersettings/datetime/ColorDateTimeSettingFragment;

    if-eqz p1, :cond_0

    .line 2198
    invoke-virtual {p1}, Lcom/coloros/settings/feature/othersettings/datetime/ColorDateTimeSettingFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2200
    iget-wide v0, p0, Lcom/coloros/settings/feature/othersettings/datetime/controller/ColorTimeSetPreferenceController$a;->b:J

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    const-wide/32 v2, 0x7fffffff

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const-string v0, "alarm"

    .line 2201
    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/AlarmManager;

    iget-wide v0, p0, Lcom/coloros/settings/feature/othersettings/datetime/controller/ColorTimeSetPreferenceController$a;->b:J

    .line 2202
    invoke-virtual {p1, v0, v1}, Landroid/app/AlarmManager;->setTime(J)V

    .line 2203
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1

    .line 2207
    :cond_0
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 2

    .line 185
    check-cast p1, Ljava/lang/Boolean;

    .line 1212
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 1213
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/datetime/controller/ColorTimeSetPreferenceController$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coloros/settings/feature/othersettings/datetime/ColorDateTimeSettingFragment;

    if-eqz v0, :cond_0

    .line 1215
    invoke-virtual {v0}, Lcom/coloros/settings/feature/othersettings/datetime/ColorDateTimeSettingFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    .line 1216
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_0

    .line 2109
    invoke-virtual {v0}, Lcom/android/settings/DateTimeSettings;->b_()V

    :cond_0
    return-void
.end method
