.class public Lcom/android/settings/AllowBindAppWidgetActivity;
.super Lcom/android/internal/app/AlertActivity;
.source "AllowBindAppWidgetActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private a:Landroid/widget/CheckBox;

.field private b:I

.field private c:Landroid/os/Bundle;

.field private d:Landroid/os/UserHandle;

.field private e:Landroid/content/ComponentName;

.field private f:Ljava/lang/String;

.field private g:Landroid/appwidget/AppWidgetManager;

.field private h:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    const/4 p1, 0x1

    .line 57
    iput-boolean p1, p0, Lcom/android/settings/AllowBindAppWidgetActivity;->h:Z

    const/4 p1, -0x1

    if-ne p2, p1, :cond_1

    .line 59
    iget p2, p0, Lcom/android/settings/AllowBindAppWidgetActivity;->b:I

    if-eq p2, p1, :cond_1

    iget-object v0, p0, Lcom/android/settings/AllowBindAppWidgetActivity;->e:Landroid/content/ComponentName;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/settings/AllowBindAppWidgetActivity;->f:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 61
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/AllowBindAppWidgetActivity;->g:Landroid/appwidget/AppWidgetManager;

    iget-object v2, p0, Lcom/android/settings/AllowBindAppWidgetActivity;->d:Landroid/os/UserHandle;

    iget-object v3, p0, Lcom/android/settings/AllowBindAppWidgetActivity;->c:Landroid/os/Bundle;

    invoke-virtual {v1, p2, v2, v0, v3}, Landroid/appwidget/AppWidgetManager;->bindAppWidgetIdIfAllowed(ILandroid/os/UserHandle;Landroid/content/ComponentName;Landroid/os/Bundle;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 64
    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2}, Landroid/content/Intent;-><init>()V

    const-string v0, "appWidgetId"

    .line 65
    iget v1, p0, Lcom/android/settings/AllowBindAppWidgetActivity;->b:I

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 66
    invoke-virtual {p0, p1, p2}, Lcom/android/settings/AllowBindAppWidgetActivity;->setResult(ILandroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 69
    :catch_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Error binding widget with id "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p2, p0, Lcom/android/settings/AllowBindAppWidgetActivity;->b:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " and component "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/settings/AllowBindAppWidgetActivity;->e:Landroid/content/ComponentName;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "BIND_APPWIDGET"

    invoke-static {p2, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/android/settings/AllowBindAppWidgetActivity;->a:Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p1

    .line 74
    iget-object p2, p0, Lcom/android/settings/AllowBindAppWidgetActivity;->g:Landroid/appwidget/AppWidgetManager;

    iget-object v0, p0, Lcom/android/settings/AllowBindAppWidgetActivity;->f:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/appwidget/AppWidgetManager;->hasBindAppWidgetPermission(Ljava/lang/String;)Z

    move-result p2

    if-eq p1, p2, :cond_1

    .line 76
    iget-object p2, p0, Lcom/android/settings/AllowBindAppWidgetActivity;->g:Landroid/appwidget/AppWidgetManager;

    iget-object v0, p0, Lcom/android/settings/AllowBindAppWidgetActivity;->f:Ljava/lang/String;

    invoke-virtual {p2, v0, p1}, Landroid/appwidget/AppWidgetManager;->setBindAppWidgetPermission(Ljava/lang/String;Z)V

    .line 81
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/AllowBindAppWidgetActivity;->finish()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    .line 94
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x0

    .line 95
    invoke-virtual {p0, p1}, Lcom/android/settings/AllowBindAppWidgetActivity;->setResult(I)V

    .line 96
    invoke-virtual {p0}, Lcom/android/settings/AllowBindAppWidgetActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const/4 v2, -0x1

    :try_start_0
    const-string v3, "appWidgetId"

    .line 100
    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/settings/AllowBindAppWidgetActivity;->b:I

    const-string v3, "appWidgetProviderProfile"

    .line 101
    invoke-virtual {v0, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/os/UserHandle;

    iput-object v3, p0, Lcom/android/settings/AllowBindAppWidgetActivity;->d:Landroid/os/UserHandle;

    .line 103
    iget-object v3, p0, Lcom/android/settings/AllowBindAppWidgetActivity;->d:Landroid/os/UserHandle;

    if-nez v3, :cond_0

    .line 104
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/AllowBindAppWidgetActivity;->d:Landroid/os/UserHandle;

    :cond_0
    const-string v3, "appWidgetProvider"

    .line 107
    invoke-virtual {v0, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    iput-object v3, p0, Lcom/android/settings/AllowBindAppWidgetActivity;->e:Landroid/content/ComponentName;

    const-string v3, "appWidgetOptions"

    .line 109
    invoke-virtual {v0, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    iput-object v0, p0, Lcom/android/settings/AllowBindAppWidgetActivity;->c:Landroid/os/Bundle;

    .line 110
    invoke-virtual {p0}, Lcom/android/settings/AllowBindAppWidgetActivity;->getCallingPackage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/AllowBindAppWidgetActivity;->f:Ljava/lang/String;

    .line 111
    invoke-virtual {p0}, Lcom/android/settings/AllowBindAppWidgetActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 112
    iget-object v3, p0, Lcom/android/settings/AllowBindAppWidgetActivity;->f:Ljava/lang/String;

    invoke-virtual {v0, v3, p1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    .line 113
    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 115
    :catch_0
    iput v2, p0, Lcom/android/settings/AllowBindAppWidgetActivity;->b:I

    .line 116
    iput-object v1, p0, Lcom/android/settings/AllowBindAppWidgetActivity;->e:Landroid/content/ComponentName;

    .line 117
    iput-object v1, p0, Lcom/android/settings/AllowBindAppWidgetActivity;->f:Ljava/lang/String;

    const-string p1, "BIND_APPWIDGET"

    const-string v0, "Error getting parameters"

    .line 118
    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    invoke-virtual {p0}, Lcom/android/settings/AllowBindAppWidgetActivity;->finish()V

    return-void

    :cond_1
    const-string v0, ""

    .line 123
    :goto_0
    iget-object v2, p0, Lcom/android/settings/AllowBindAppWidgetActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    const v3, 0x7f12013f

    .line 124
    invoke-virtual {p0, v3}, Lcom/android/settings/AllowBindAppWidgetActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    const v3, 0x7f12013e

    const/4 v4, 0x1

    .line 125
    new-array v5, v4, [Ljava/lang/Object;

    aput-object v0, v5, p1

    invoke-virtual {p0, v3, v5}, Lcom/android/settings/AllowBindAppWidgetActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    const v3, 0x7f120643

    .line 126
    invoke-virtual {p0, v3}, Lcom/android/settings/AllowBindAppWidgetActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    const/high16 v3, 0x1040000

    .line 127
    invoke-virtual {p0, v3}, Lcom/android/settings/AllowBindAppWidgetActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 128
    iput-object p0, v2, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 129
    iput-object p0, v2, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    const-string v3, "layout_inflater"

    .line 131
    invoke-virtual {p0, v3}, Lcom/android/settings/AllowBindAppWidgetActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    const-string v5, "com.android.internal.R.layout.always_use_checkbox"

    .line 134
    invoke-static {v5}, Lcom/coloros/settings/d/a;->a(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v3, v5, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, v2, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    .line 137
    iget-object v1, v2, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    const-string v2, "com.android.internal.R.id.alwaysUse"

    invoke-static {v2}, Lcom/coloros/settings/d/a;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/android/settings/AllowBindAppWidgetActivity;->a:Landroid/widget/CheckBox;

    .line 138
    iget-object v1, p0, Lcom/android/settings/AllowBindAppWidgetActivity;->a:Landroid/widget/CheckBox;

    const v2, 0x7f120140

    new-array v3, v4, [Ljava/lang/Object;

    aput-object v0, v3, p1

    invoke-virtual {p0, v2, v3}, Lcom/android/settings/AllowBindAppWidgetActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 140
    iget-object p1, p0, Lcom/android/settings/AllowBindAppWidgetActivity;->a:Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/widget/CheckBox;->getPaddingLeft()I

    move-result v0

    iget-object v1, p0, Lcom/android/settings/AllowBindAppWidgetActivity;->a:Landroid/widget/CheckBox;

    .line 141
    invoke-virtual {v1}, Landroid/widget/CheckBox;->getPaddingTop()I

    move-result v1

    iget-object v2, p0, Lcom/android/settings/AllowBindAppWidgetActivity;->a:Landroid/widget/CheckBox;

    .line 142
    invoke-virtual {v2}, Landroid/widget/CheckBox;->getPaddingRight()I

    move-result v2

    iget-object v3, p0, Lcom/android/settings/AllowBindAppWidgetActivity;->a:Landroid/widget/CheckBox;

    .line 143
    invoke-virtual {v3}, Landroid/widget/CheckBox;->getPaddingBottom()I

    move-result v3

    int-to-float v3, v3

    .line 144
    invoke-virtual {p0}, Lcom/android/settings/AllowBindAppWidgetActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0700f8

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    add-float/2addr v3, v4

    float-to-int v3, v3

    .line 140
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/widget/CheckBox;->setPadding(IIII)V

    .line 146
    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/AllowBindAppWidgetActivity;->g:Landroid/appwidget/AppWidgetManager;

    .line 147
    iget-object p1, p0, Lcom/android/settings/AllowBindAppWidgetActivity;->a:Landroid/widget/CheckBox;

    iget-object v0, p0, Lcom/android/settings/AllowBindAppWidgetActivity;->g:Landroid/appwidget/AppWidgetManager;

    iget-object v1, p0, Lcom/android/settings/AllowBindAppWidgetActivity;->f:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settings/AllowBindAppWidgetActivity;->d:Landroid/os/UserHandle;

    .line 148
    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    .line 147
    invoke-virtual {v0, v1, v2}, Landroid/appwidget/AppWidgetManager;->hasBindAppWidgetPermission(Ljava/lang/String;I)Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 150
    invoke-virtual {p0}, Lcom/android/settings/AllowBindAppWidgetActivity;->setupAlert()V

    return-void
.end method

.method protected onPause()V
    .locals 1

    .line 86
    iget-boolean v0, p0, Lcom/android/settings/AllowBindAppWidgetActivity;->h:Z

    if-nez v0, :cond_0

    .line 87
    invoke-virtual {p0}, Lcom/android/settings/AllowBindAppWidgetActivity;->finish()V

    .line 89
    :cond_0
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onPause()V

    return-void
.end method
