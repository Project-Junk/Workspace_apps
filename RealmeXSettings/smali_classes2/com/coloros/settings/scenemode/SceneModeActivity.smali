.class public Lcom/coloros/settings/scenemode/SceneModeActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "SceneModeActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field private a:I

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/coloros/settings/scenemode/b;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcolor/support/v7/app/AlertDialog;

.field private d:Lcolor/support/v7/app/AlertDialog;

.field private e:I

.field private f:Z

.field private g:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

.field private h:Landroid/content/BroadcastReceiver;

.field private i:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 43
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    const/4 v0, 0x0

    .line 52
    iput v0, p0, Lcom/coloros/settings/scenemode/SceneModeActivity;->e:I

    .line 53
    iput-boolean v0, p0, Lcom/coloros/settings/scenemode/SceneModeActivity;->f:Z

    .line 271
    new-instance v0, Lcom/coloros/settings/scenemode/SceneModeActivity$1;

    invoke-direct {v0, p0}, Lcom/coloros/settings/scenemode/SceneModeActivity$1;-><init>(Lcom/coloros/settings/scenemode/SceneModeActivity;)V

    iput-object v0, p0, Lcom/coloros/settings/scenemode/SceneModeActivity;->h:Landroid/content/BroadcastReceiver;

    .line 283
    new-instance v0, Lcom/coloros/settings/scenemode/SceneModeActivity$2;

    invoke-direct {v0, p0}, Lcom/coloros/settings/scenemode/SceneModeActivity$2;-><init>(Lcom/coloros/settings/scenemode/SceneModeActivity;)V

    iput-object v0, p0, Lcom/coloros/settings/scenemode/SceneModeActivity;->i:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/util/ArrayList;)Landroid/content/Intent;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Lcom/coloros/settings/scenemode/b;",
            ">;)",
            "Landroid/content/Intent;"
        }
    .end annotation

    .line 57
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 58
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/coloros/settings/scenemode/SceneModeActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p0, "SCENE_ITEM_INFO"

    .line 59
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const/high16 p0, 0x10000000

    .line 60
    invoke-virtual {v0, p0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private synthetic a()V
    .locals 6

    const-string v0, "SceneTileActivityTAG"

    .line 100
    invoke-virtual {p0}, Lcom/coloros/settings/scenemode/SceneModeActivity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcom/coloros/settings/scenemode/SceneModeActivity;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_2

    .line 4111
    iget-object v1, p0, Lcom/coloros/settings/scenemode/SceneModeActivity;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v2, v1, 0x1

    .line 4113
    new-array v2, v2, [Ljava/lang/String;

    const v3, 0x7f121536

    .line 4114
    invoke-virtual {p0, v3}, Lcom/coloros/settings/scenemode/SceneModeActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 4115
    iput v4, p0, Lcom/coloros/settings/scenemode/SceneModeActivity;->e:I

    const/4 v3, 0x1

    :goto_0
    if-gt v3, v1, :cond_1

    .line 4117
    iget-object v4, p0, Lcom/coloros/settings/scenemode/SceneModeActivity;->b:Ljava/util/List;

    add-int/lit8 v5, v3, -0x1

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/coloros/settings/scenemode/b;

    .line 4118
    invoke-virtual {v4, p0}, Lcom/coloros/settings/scenemode/b;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v3

    .line 4180
    iget-boolean v4, v4, Lcom/coloros/settings/scenemode/b;->c:Z

    if-eqz v4, :cond_0

    .line 4120
    iput v3, p0, Lcom/coloros/settings/scenemode/SceneModeActivity;->e:I

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 4124
    :cond_1
    new-instance v1, Lcolor/support/v7/app/AlertDialog$Builder;

    const v3, 0x7f13003c

    invoke-direct {v1, p0, v3}, Lcolor/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const v3, 0x7f1212d3

    .line 4125
    invoke-virtual {p0, v3}, Lcom/coloros/settings/scenemode/SceneModeActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcolor/support/v7/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    iget v3, p0, Lcom/coloros/settings/scenemode/SceneModeActivity;->e:I

    new-instance v4, Lcom/coloros/settings/scenemode/-$$Lambda$SceneModeActivity$Yu4wkKV7rSFX9ALtCrDwHJn4trk;

    invoke-direct {v4, p0}, Lcom/coloros/settings/scenemode/-$$Lambda$SceneModeActivity$Yu4wkKV7rSFX9ALtCrDwHJn4trk;-><init>(Lcom/coloros/settings/scenemode/SceneModeActivity;)V

    .line 4126
    invoke-virtual {v1, v2, v3, v4}, Lcolor/support/v7/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    .line 4148
    invoke-virtual {v1}, Lcolor/support/v7/app/AlertDialog$Builder;->create()Lcolor/support/v7/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/coloros/settings/scenemode/SceneModeActivity;->c:Lcolor/support/v7/app/AlertDialog;

    :try_start_0
    const-string v1, "show choose dialog"

    .line 4150
    invoke-static {v0, v1}, Lcom/coloros/settings/utils/aa;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 4151
    iget-object v1, p0, Lcom/coloros/settings/scenemode/SceneModeActivity;->c:Lcolor/support/v7/app/AlertDialog;

    invoke-virtual {v1}, Lcolor/support/v7/app/AlertDialog;->show()V

    .line 4152
    iget-object v1, p0, Lcom/coloros/settings/scenemode/SceneModeActivity;->c:Lcolor/support/v7/app/AlertDialog;

    invoke-virtual {v1, p0}, Lcolor/support/v7/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const-string v1, "choice dialog BadTokenException"

    .line 4154
    invoke-static {v0, v1}, Lcom/coloros/settings/utils/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method private synthetic a(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 170
    invoke-virtual {p0}, Lcom/coloros/settings/scenemode/SceneModeActivity;->finish()V

    return-void
.end method

.method private a(Lcom/coloros/settings/scenemode/b;)V
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongConstant"
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 187
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "openMode : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Lcom/coloros/settings/scenemode/b;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SceneTileActivityTAG"

    invoke-static {v1, v0}, Lcom/coloros/settings/utils/aa;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    invoke-virtual {p1}, Lcom/coloros/settings/scenemode/b;->d()I

    move-result v0

    .line 189
    invoke-virtual {p1}, Lcom/coloros/settings/scenemode/b;->c()Ljava/lang/String;

    move-result-object v1

    .line 190
    invoke-virtual {p1}, Lcom/coloros/settings/scenemode/b;->b()Ljava/lang/String;

    move-result-object v2

    .line 191
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 192
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 193
    new-instance v1, Landroid/content/ComponentName;

    .line 2047
    iget-object v4, p1, Lcom/coloros/settings/scenemode/b;->a:Ljava/lang/String;

    .line 193
    invoke-direct {v1, v4, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v1, "switch"

    const-string v2, "1"

    .line 194
    invoke-virtual {v3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 195
    invoke-virtual {p1}, Lcom/coloros/settings/scenemode/b;->e()I

    move-result p1

    const-string v1, "from_key"

    invoke-virtual {v3, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/4 p1, 0x1

    if-eq v0, p1, :cond_1

    const/4 p1, 0x2

    if-eq v0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/16 p1, 0x20

    .line 198
    invoke-virtual {v3, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 p1, 0x1000000

    .line 199
    invoke-virtual {v3, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 200
    invoke-virtual {p0, v3}, Lcom/coloros/settings/scenemode/SceneModeActivity;->sendBroadcast(Landroid/content/Intent;)V

    return-void

    .line 203
    :cond_1
    invoke-virtual {p0}, Lcom/coloros/settings/scenemode/SceneModeActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    invoke-virtual {v3, p1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object p1

    if-eqz p1, :cond_2

    const/high16 p1, 0x10000000

    .line 204
    invoke-virtual {v3, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 205
    invoke-virtual {p0, v3}, Lcom/coloros/settings/scenemode/SceneModeActivity;->startActivity(Landroid/content/Intent;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private synthetic a(Lcom/coloros/settings/scenemode/b;Landroid/content/DialogInterface;I)V
    .locals 1

    const/4 p2, 0x0

    .line 165
    iput p2, p0, Lcom/coloros/settings/scenemode/SceneModeActivity;->a:I

    .line 166
    invoke-virtual {p0}, Lcom/coloros/settings/scenemode/SceneModeActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    iget p3, p0, Lcom/coloros/settings/scenemode/SceneModeActivity;->a:I

    const-string v0, "scene_mode_type"

    invoke-static {p2, v0, p3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 167
    invoke-direct {p0, p1}, Lcom/coloros/settings/scenemode/SceneModeActivity;->a(Lcom/coloros/settings/scenemode/b;)V

    .line 168
    invoke-virtual {p0}, Lcom/coloros/settings/scenemode/SceneModeActivity;->finish()V

    return-void
.end method

.method private synthetic b(Landroid/content/DialogInterface;I)V
    .locals 8

    .line 127
    iget v0, p0, Lcom/coloros/settings/scenemode/SceneModeActivity;->e:I

    if-eq v0, p2, :cond_3

    .line 128
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onClick which : "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "SceneTileActivityTAG"

    invoke-static {v1, v0}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 130
    iput v0, p0, Lcom/coloros/settings/scenemode/SceneModeActivity;->a:I

    .line 131
    invoke-virtual {p0}, Lcom/coloros/settings/scenemode/SceneModeActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget p2, p0, Lcom/coloros/settings/scenemode/SceneModeActivity;->a:I

    const-string v0, "scene_mode_type"

    invoke-static {p1, v0, p2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    :cond_0
    const/4 v2, 0x1

    sub-int/2addr p2, v2

    .line 133
    iget-object v3, p0, Lcom/coloros/settings/scenemode/SceneModeActivity;->b:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge p2, v3, :cond_3

    .line 134
    iget-object v3, p0, Lcom/coloros/settings/scenemode/SceneModeActivity;->b:Ljava/util/List;

    invoke-interface {v3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/coloros/settings/scenemode/b;

    .line 135
    iget v3, p0, Lcom/coloros/settings/scenemode/SceneModeActivity;->e:I

    if-nez v3, :cond_1

    .line 136
    invoke-direct {p0, p2}, Lcom/coloros/settings/scenemode/SceneModeActivity;->a(Lcom/coloros/settings/scenemode/b;)V

    goto/16 :goto_1

    .line 138
    :cond_1
    iput-boolean v2, p0, Lcom/coloros/settings/scenemode/SceneModeActivity;->f:Z

    .line 139
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 140
    iget-object p1, p0, Lcom/coloros/settings/scenemode/SceneModeActivity;->b:Ljava/util/List;

    iget v3, p0, Lcom/coloros/settings/scenemode/SceneModeActivity;->e:I

    sub-int/2addr v3, v2

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/coloros/settings/scenemode/b;

    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    .line 3160
    new-instance v3, Lcolor/support/v7/app/AlertDialog$Builder;

    const v4, 0x7f13003c

    invoke-direct {v3, p0, v4}, Lcolor/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const v4, 0x7f1204d0

    .line 3161
    invoke-virtual {v3, v4}, Lcolor/support/v7/app/AlertDialog$Builder;->setTitle(I)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object v3

    .line 3162
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    const v5, 0x7f1204d1

    invoke-virtual {p0, v5}, Lcom/coloros/settings/scenemode/SceneModeActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    .line 3163
    invoke-virtual {p1, p0}, Lcom/coloros/settings/scenemode/b;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v0

    invoke-virtual {p2, p0}, Lcom/coloros/settings/scenemode/b;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v2

    .line 3162
    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcolor/support/v7/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f120f1b

    new-instance v3, Lcom/coloros/settings/scenemode/-$$Lambda$SceneModeActivity$4mKJT-JQig3WIaEfE58r_nxnNgw;

    invoke-direct {v3, p0, p2}, Lcom/coloros/settings/scenemode/-$$Lambda$SceneModeActivity$4mKJT-JQig3WIaEfE58r_nxnNgw;-><init>(Lcom/coloros/settings/scenemode/SceneModeActivity;Lcom/coloros/settings/scenemode/b;)V

    .line 3164
    invoke-virtual {v0, v2, v3}, Lcolor/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f120491

    new-instance v3, Lcom/coloros/settings/scenemode/-$$Lambda$SceneModeActivity$9XfvGUunKY4pjb8B7vl5Lxm5_ak;

    invoke-direct {v3, p0}, Lcom/coloros/settings/scenemode/-$$Lambda$SceneModeActivity$9XfvGUunKY4pjb8B7vl5Lxm5_ak;-><init>(Lcom/coloros/settings/scenemode/SceneModeActivity;)V

    .line 3170
    invoke-virtual {v0, v2, v3}, Lcolor/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    .line 3171
    invoke-virtual {v0}, Lcolor/support/v7/app/AlertDialog$Builder;->create()Lcolor/support/v7/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/settings/scenemode/SceneModeActivity;->d:Lcolor/support/v7/app/AlertDialog;

    :try_start_0
    const-string v0, "show change dialog"

    .line 3173
    invoke-static {v1, v0}, Lcom/coloros/settings/utils/aa;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 3174
    iget-object v0, p0, Lcom/coloros/settings/scenemode/SceneModeActivity;->d:Lcolor/support/v7/app/AlertDialog;

    invoke-virtual {v0}, Lcolor/support/v7/app/AlertDialog;->show()V

    .line 3175
    iget-object v0, p0, Lcom/coloros/settings/scenemode/SceneModeActivity;->d:Lcolor/support/v7/app/AlertDialog;

    invoke-virtual {v0, p0}, Lcolor/support/v7/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "change dialog BadTokenException."

    .line 3177
    invoke-static {v1, v0}, Lcom/coloros/settings/utils/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3180
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "showChangeDialog from : "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Lcom/coloros/settings/scenemode/b;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " to "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Lcom/coloros/settings/scenemode/b;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/coloros/settings/utils/aa;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void

    .line 147
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/coloros/settings/scenemode/SceneModeActivity;->finish()V

    return-void
.end method

.method public static synthetic lambda$4mKJT-JQig3WIaEfE58r_nxnNgw(Lcom/coloros/settings/scenemode/SceneModeActivity;Lcom/coloros/settings/scenemode/b;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/coloros/settings/scenemode/SceneModeActivity;->a(Lcom/coloros/settings/scenemode/b;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic lambda$9XfvGUunKY4pjb8B7vl5Lxm5_ak(Lcom/coloros/settings/scenemode/SceneModeActivity;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/coloros/settings/scenemode/SceneModeActivity;->a(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic lambda$CGEjVnI1Ax4e5Y419g0siAHJZmA(Lcom/coloros/settings/scenemode/SceneModeActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/coloros/settings/scenemode/SceneModeActivity;->a()V

    return-void
.end method

.method public static synthetic lambda$Yu4wkKV7rSFX9ALtCrDwHJn4trk(Lcom/coloros/settings/scenemode/SceneModeActivity;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/coloros/settings/scenemode/SceneModeActivity;->b(Landroid/content/DialogInterface;I)V

    return-void
.end method


# virtual methods
.method public finish()V
    .locals 3

    const-string v0, "SceneTileActivityTAG"

    const-string v1, "finish activity"

    .line 222
    invoke-static {v0, v1}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    iget-object v1, p0, Lcom/coloros/settings/scenemode/SceneModeActivity;->c:Lcolor/support/v7/app/AlertDialog;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcolor/support/v7/app/AlertDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "mSceneChoiceDialog dismiss dialog"

    .line 224
    invoke-static {v0, v1}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    iget-object v1, p0, Lcom/coloros/settings/scenemode/SceneModeActivity;->c:Lcolor/support/v7/app/AlertDialog;

    invoke-virtual {v1, v2}, Lcolor/support/v7/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 226
    iget-object v1, p0, Lcom/coloros/settings/scenemode/SceneModeActivity;->c:Lcolor/support/v7/app/AlertDialog;

    invoke-virtual {v1}, Lcolor/support/v7/app/AlertDialog;->dismiss()V

    .line 229
    :cond_0
    iget-object v1, p0, Lcom/coloros/settings/scenemode/SceneModeActivity;->d:Lcolor/support/v7/app/AlertDialog;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcolor/support/v7/app/AlertDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "mSceneChangeDialog dismiss dialog"

    .line 230
    invoke-static {v0, v1}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    iget-object v0, p0, Lcom/coloros/settings/scenemode/SceneModeActivity;->d:Lcolor/support/v7/app/AlertDialog;

    invoke-virtual {v0, v2}, Lcolor/support/v7/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 232
    iget-object v0, p0, Lcom/coloros/settings/scenemode/SceneModeActivity;->d:Lcolor/support/v7/app/AlertDialog;

    invoke-virtual {v0}, Lcolor/support/v7/app/AlertDialog;->dismiss()V

    .line 234
    :cond_1
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->finish()V

    const/4 v0, 0x0

    .line 235
    invoke-virtual {p0, v0, v0}, Lcom/coloros/settings/scenemode/SceneModeActivity;->overridePendingTransition(II)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    const-string v0, "SceneTileActivityTAG"

    .line 1067
    invoke-virtual {p0}, Lcom/coloros/settings/scenemode/SceneModeActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1069
    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    .line 1070
    invoke-virtual {v1, v3}, Landroid/view/Window;->setNavigationBarColor(I)V

    if-eqz v2, :cond_0

    const/16 v1, 0x1706

    .line 1078
    invoke-virtual {v2, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 86
    :cond_0
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d0030

    .line 87
    invoke-virtual {p0, p1}, Lcom/coloros/settings/scenemode/SceneModeActivity;->setContentView(I)V

    .line 89
    :try_start_0
    invoke-virtual {p0}, Lcom/coloros/settings/scenemode/SceneModeActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v1, "SCENE_ITEM_INFO"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    iput-object p1, p0, Lcom/coloros/settings/scenemode/SceneModeActivity;->b:Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 91
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/coloros/settings/utils/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    :goto_0
    iget-object p1, p0, Lcom/coloros/settings/scenemode/SceneModeActivity;->b:Ljava/util/List;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    const p1, 0x7f0a02ac

    .line 99
    invoke-virtual {p0, p1}, Lcom/coloros/settings/scenemode/SceneModeActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/coloros/settings/scenemode/-$$Lambda$SceneModeActivity$CGEjVnI1Ax4e5Y419g0siAHJZmA;

    invoke-direct {v0, p0}, Lcom/coloros/settings/scenemode/-$$Lambda$SceneModeActivity$CGEjVnI1Ax4e5Y419g0siAHJZmA;-><init>(Lcom/coloros/settings/scenemode/SceneModeActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 105
    invoke-static {p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/settings/scenemode/SceneModeActivity;->g:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    .line 1255
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "android.intent.action.SCREEN_OFF"

    .line 1256
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    .line 1257
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1258
    iget-object v0, p0, Lcom/coloros/settings/scenemode/SceneModeActivity;->h:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0, p1}, Lcom/coloros/settings/scenemode/SceneModeActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1260
    new-instance p1, Landroid/content/IntentFilter;

    const-string v0, "com.coloros.scenemode.action.FINISH_ACTIVITY"

    invoke-direct {p1, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1261
    iget-object v0, p0, Lcom/coloros/settings/scenemode/SceneModeActivity;->g:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    iget-object v1, p0, Lcom/coloros/settings/scenemode/SceneModeActivity;->i:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1, p1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    return-void

    .line 94
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/coloros/settings/scenemode/SceneModeActivity;->finish()V

    const-string p1, "mSceneItemInfoList is null"

    .line 95
    invoke-static {v0, p1}, Lcom/coloros/settings/utils/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 240
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    .line 2265
    iget-object v0, p0, Lcom/coloros/settings/scenemode/SceneModeActivity;->h:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/coloros/settings/scenemode/SceneModeActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 2266
    iget-object v0, p0, Lcom/coloros/settings/scenemode/SceneModeActivity;->g:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    if-eqz v0, :cond_0

    .line 2267
    iget-object v1, p0, Lcom/coloros/settings/scenemode/SceneModeActivity;->i:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    const-string v0, "SceneTileActivityTAG"

    const-string v1, "activity onDestroy"

    .line 242
    invoke-static {v0, v1}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .line 247
    iget-object v0, p0, Lcom/coloros/settings/scenemode/SceneModeActivity;->c:Lcolor/support/v7/app/AlertDialog;

    if-ne p1, v0, :cond_0

    iget-boolean p1, p0, Lcom/coloros/settings/scenemode/SceneModeActivity;->f:Z

    if-eqz p1, :cond_0

    return-void

    :cond_0
    const-string p1, "SceneTileActivityTAG"

    const-string v0, "Dialog onDismiss and finish activity"

    .line 250
    invoke-static {p1, v0}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    invoke-virtual {p0}, Lcom/coloros/settings/scenemode/SceneModeActivity;->finish()V

    return-void
.end method

.method public onPause()V
    .locals 0

    .line 217
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onPause()V

    return-void
.end method
