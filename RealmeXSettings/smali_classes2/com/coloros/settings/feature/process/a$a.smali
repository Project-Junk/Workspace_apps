.class final Lcom/coloros/settings/feature/process/a$a;
.super Landroid/os/AsyncTask;
.source "RunningApplicationsModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/feature/process/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/coloros/settings/feature/process/RunningApplications$b;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/settings/feature/process/a;


# direct methods
.method private constructor <init>(Lcom/coloros/settings/feature/process/a;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/coloros/settings/feature/process/a$a;->a:Lcom/coloros/settings/feature/process/a;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/coloros/settings/feature/process/a;B)V
    .locals 0

    .line 68
    invoke-direct {p0, p1}, Lcom/coloros/settings/feature/process/a$a;-><init>(Lcom/coloros/settings/feature/process/a;)V

    return-void
.end method

.method private a()Lcom/coloros/settings/feature/process/RunningApplications$b;
    .locals 16

    move-object/from16 v1, p0

    .line 82
    iget-object v0, v1, Lcom/coloros/settings/feature/process/a$a;->a:Lcom/coloros/settings/feature/process/a;

    .line 1046
    iget-object v0, v0, Lcom/coloros/settings/feature/process/a;->b:Landroid/content/Context;

    const-string v2, "activity"

    .line 82
    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/app/ActivityManager;

    .line 83
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v3

    .line 84
    new-instance v0, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v0}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 85
    invoke-virtual {v2, v0}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 86
    iget-object v4, v1, Lcom/coloros/settings/feature/process/a$a;->a:Lcom/coloros/settings/feature/process/a;

    .line 2046
    iget-object v4, v4, Lcom/coloros/settings/feature/process/a;->b:Landroid/content/Context;

    const-string v5, "input_method"

    .line 86
    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/inputmethod/InputMethodManager;

    .line 87
    invoke-virtual {v4}, Landroid/view/inputmethod/InputMethodManager;->getInputMethodList()Ljava/util/List;

    move-result-object v4

    .line 88
    iget-wide v5, v0, Landroid/app/ActivityManager$MemoryInfo;->totalMem:J

    long-to-float v0, v5

    const/high16 v5, 0x4e800000

    div-float v5, v0, v5

    .line 89
    invoke-virtual {v2}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0

    .line 90
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 91
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 92
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    if-eqz v0, :cond_f

    .line 94
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 95
    iget-object v11, v10, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    if-eqz v11, :cond_0

    .line 96
    iget-object v11, v10, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    array-length v12, v11

    const/4 v13, 0x0

    :goto_0
    if-ge v13, v12, :cond_0

    aget-object v14, v11, v13

    .line 97
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "#"

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v10, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 98
    invoke-virtual {v6, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/coloros/settings/feature/process/RunningApplications$a;

    if-nez v15, :cond_1

    .line 100
    new-instance v15, Lcom/coloros/settings/feature/process/RunningApplications$a;

    invoke-direct {v15}, Lcom/coloros/settings/feature/process/RunningApplications$a;-><init>()V

    .line 101
    iput-object v14, v15, Lcom/coloros/settings/feature/process/RunningApplications$a;->b:Ljava/lang/String;

    .line 102
    iget v14, v10, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    iput v14, v15, Lcom/coloros/settings/feature/process/RunningApplications$a;->d:I

    .line 103
    iput-object v9, v15, Lcom/coloros/settings/feature/process/RunningApplications$a;->e:Ljava/lang/String;

    .line 104
    new-instance v14, Ljava/util/HashSet;

    invoke-direct {v14}, Ljava/util/HashSet;-><init>()V

    iput-object v14, v15, Lcom/coloros/settings/feature/process/RunningApplications$a;->f:Ljava/util/Set;

    .line 105
    invoke-virtual {v6, v9, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    :cond_1
    iget-object v9, v15, Lcom/coloros/settings/feature/process/RunningApplications$a;->f:Ljava/util/Set;

    iget v14, v10, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v9, v14}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 112
    :cond_2
    iget-object v0, v1, Lcom/coloros/settings/feature/process/a$a;->a:Lcom/coloros/settings/feature/process/a;

    .line 3046
    iget-object v0, v0, Lcom/coloros/settings/feature/process/a;->b:Landroid/content/Context;

    .line 112
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    .line 113
    new-instance v10, Ljava/util/HashSet;

    invoke-direct {v10}, Ljava/util/HashSet;-><init>()V

    .line 114
    invoke-virtual {v6}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_3
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 115
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    const/4 v11, 0x1

    if-eqz v4, :cond_6

    .line 119
    :try_start_0
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_4
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_5

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/view/inputmethod/InputMethodInfo;

    .line 120
    invoke-virtual {v13}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/coloros/settings/feature/process/RunningApplications$a;

    iget-object v14, v14, Lcom/coloros/settings/feature/process/RunningApplications$a;->b:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    move v12, v11

    goto :goto_2

    :cond_5
    const/4 v12, 0x0

    :goto_2
    if-eqz v12, :cond_6

    goto :goto_1

    .line 129
    :cond_6
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/coloros/settings/feature/process/RunningApplications$a;

    iget-object v12, v12, Lcom/coloros/settings/feature/process/RunningApplications$a;->b:Ljava/lang/String;

    const/4 v13, 0x0

    invoke-virtual {v9, v12, v13}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v12

    .line 130
    iget v13, v12, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v13, v11

    if-nez v13, :cond_9

    .line 131
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/coloros/settings/feature/process/RunningApplications$a;

    invoke-virtual {v12, v9}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    iput-object v13, v11, Lcom/coloros/settings/feature/process/RunningApplications$a;->a:Landroid/graphics/drawable/Drawable;

    .line 132
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/coloros/settings/feature/process/RunningApplications$a;

    iget v11, v11, Lcom/coloros/settings/feature/process/RunningApplications$a;->d:I

    invoke-static {v11}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v11

    invoke-static {v11}, Lcom/coloros/settings/feature/process/a;->a(I)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 133
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/coloros/settings/feature/process/RunningApplications$a;

    invoke-static {}, Loppo/util/OppoMultiLauncherUtil;->getInstance()Loppo/util/OppoMultiLauncherUtil;

    move-result-object v12

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/coloros/settings/feature/process/RunningApplications$a;

    iget-object v13, v13, Lcom/coloros/settings/feature/process/RunningApplications$a;->b:Ljava/lang/String;

    invoke-virtual {v12, v13}, Loppo/util/OppoMultiLauncherUtil;->getAliasByPackage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v11, Lcom/coloros/settings/feature/process/RunningApplications$a;->c:Ljava/lang/String;

    goto :goto_3

    .line 135
    :cond_7
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/coloros/settings/feature/process/RunningApplications$a;

    iget v11, v11, Lcom/coloros/settings/feature/process/RunningApplications$a;->d:I

    invoke-static {v3, v11}, Lcom/coloros/settings/feature/process/a;->a(II)Z

    move-result v11

    if-nez v11, :cond_8

    goto/16 :goto_1

    .line 138
    :cond_8
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/coloros/settings/feature/process/RunningApplications$a;

    invoke-virtual {v12, v9}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v12

    invoke-interface {v12}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v12

    iput-object v12, v11, Lcom/coloros/settings/feature/process/RunningApplications$a;->c:Ljava/lang/String;

    .line 140
    :goto_3
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v8, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coloros/settings/feature/process/RunningApplications$a;

    iget-object v0, v0, Lcom/coloros/settings/feature/process/RunningApplications$a;->f:Ljava/util/Set;

    invoke-interface {v10, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_1

    .line 142
    :cond_9
    iget-object v13, v1, Lcom/coloros/settings/feature/process/a$a;->a:Lcom/coloros/settings/feature/process/a;

    .line 4046
    iget-object v13, v13, Lcom/coloros/settings/feature/process/a;->b:Landroid/content/Context;

    .line 142
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/coloros/settings/feature/process/RunningApplications$a;

    iget-object v14, v14, Lcom/coloros/settings/feature/process/RunningApplications$a;->b:Ljava/lang/String;

    .line 4207
    invoke-virtual {v13}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v13

    .line 4208
    invoke-virtual {v13, v14}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v14

    if-eqz v14, :cond_a

    const/4 v15, 0x0

    .line 4210
    invoke-virtual {v13, v14, v15}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v13

    if-eqz v13, :cond_a

    .line 4211
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v13

    if-lez v13, :cond_a

    goto :goto_4

    :cond_a
    const/4 v11, 0x0

    :goto_4
    if-eqz v11, :cond_3

    .line 143
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/coloros/settings/feature/process/RunningApplications$a;

    invoke-virtual {v12, v9}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    iput-object v13, v11, Lcom/coloros/settings/feature/process/RunningApplications$a;->a:Landroid/graphics/drawable/Drawable;

    .line 144
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/coloros/settings/feature/process/RunningApplications$a;

    iget v11, v11, Lcom/coloros/settings/feature/process/RunningApplications$a;->d:I

    invoke-static {v11}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v11

    invoke-static {v11}, Lcom/coloros/settings/feature/process/a;->a(I)Z

    move-result v11

    if-eqz v11, :cond_b

    .line 145
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/coloros/settings/feature/process/RunningApplications$a;

    invoke-static {}, Loppo/util/OppoMultiLauncherUtil;->getInstance()Loppo/util/OppoMultiLauncherUtil;

    move-result-object v12

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/coloros/settings/feature/process/RunningApplications$a;

    iget-object v13, v13, Lcom/coloros/settings/feature/process/RunningApplications$a;->b:Ljava/lang/String;

    invoke-virtual {v12, v13}, Loppo/util/OppoMultiLauncherUtil;->getAliasByPackage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v11, Lcom/coloros/settings/feature/process/RunningApplications$a;->c:Ljava/lang/String;

    goto :goto_5

    .line 147
    :cond_b
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/coloros/settings/feature/process/RunningApplications$a;

    iget v11, v11, Lcom/coloros/settings/feature/process/RunningApplications$a;->d:I

    invoke-static {v3, v11}, Lcom/coloros/settings/feature/process/a;->a(II)Z

    move-result v11

    if-nez v11, :cond_c

    goto/16 :goto_1

    .line 150
    :cond_c
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/coloros/settings/feature/process/RunningApplications$a;

    invoke-virtual {v12, v9}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v12

    invoke-interface {v12}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v12

    iput-object v12, v11, Lcom/coloros/settings/feature/process/RunningApplications$a;->c:Ljava/lang/String;

    .line 152
    :goto_5
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v7, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coloros/settings/feature/process/RunningApplications$a;

    iget-object v0, v0, Lcom/coloros/settings/feature/process/RunningApplications$a;->f:Ljava/util/Set;

    invoke-interface {v10, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    :catch_0
    move-exception v0

    .line 156
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "Error occur, e = "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v11, "RunningApplicationsModel"

    invoke-static {v11, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 159
    :cond_d
    invoke-interface {v10}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v3, Lcom/coloros/settings/feature/process/-$$Lambda$gfCssnBJI7TKfXb_Jmv7raVYNkY;->INSTANCE:Lcom/coloros/settings/feature/process/-$$Lambda$gfCssnBJI7TKfXb_Jmv7raVYNkY;

    invoke-interface {v0, v3}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object v0

    .line 160
    invoke-virtual {v2, v0}, Landroid/app/ActivityManager;->getProcessMemoryInfo([I)[Landroid/os/Debug$MemoryInfo;

    move-result-object v2

    const/4 v3, 0x0

    .line 161
    :goto_6
    array-length v4, v0

    if-ge v3, v4, :cond_e

    .line 163
    invoke-virtual {v7}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    new-instance v6, Lcom/coloros/settings/feature/process/-$$Lambda$a$a$i2jcHgdo_O7X4uw5HnoGl32xvgI;

    invoke-direct {v6, v0, v3, v2}, Lcom/coloros/settings/feature/process/-$$Lambda$a$a$i2jcHgdo_O7X4uw5HnoGl32xvgI;-><init>([II[Landroid/os/Debug$MemoryInfo;)V

    invoke-interface {v4, v6}, Ljava/util/Collection;->forEach(Ljava/util/function/Consumer;)V

    .line 168
    invoke-virtual {v8}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    new-instance v6, Lcom/coloros/settings/feature/process/-$$Lambda$a$a$C8J8FJJ6-5oEnPlyZ61IyjvTXnI;

    invoke-direct {v6, v0, v3, v2}, Lcom/coloros/settings/feature/process/-$$Lambda$a$a$C8J8FJJ6-5oEnPlyZ61IyjvTXnI;-><init>([II[Landroid/os/Debug$MemoryInfo;)V

    invoke-interface {v4, v6}, Ljava/util/Collection;->forEach(Ljava/util/function/Consumer;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 174
    :cond_e
    invoke-virtual {v8}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    new-instance v2, Lcom/coloros/settings/feature/process/-$$Lambda$a$a$BSjbnEXNBpxn-TtLV6N-VMLrtBY;

    invoke-direct {v2, v1, v5}, Lcom/coloros/settings/feature/process/-$$Lambda$a$a$BSjbnEXNBpxn-TtLV6N-VMLrtBY;-><init>(Lcom/coloros/settings/feature/process/a$a;F)V

    invoke-interface {v0, v2}, Ljava/util/Collection;->forEach(Ljava/util/function/Consumer;)V

    .line 178
    invoke-virtual {v7}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    new-instance v2, Lcom/coloros/settings/feature/process/-$$Lambda$a$a$jEMMuPNJY9D1eUVrhdbTo2frJ94;

    invoke-direct {v2, v1, v5}, Lcom/coloros/settings/feature/process/-$$Lambda$a$a$jEMMuPNJY9D1eUVrhdbTo2frJ94;-><init>(Lcom/coloros/settings/feature/process/a$a;F)V

    invoke-interface {v0, v2}, Ljava/util/Collection;->forEach(Ljava/util/function/Consumer;)V

    .line 183
    :cond_f
    invoke-virtual {v7}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    const/4 v2, 0x0

    new-array v3, v2, [Lcom/coloros/settings/feature/process/RunningApplications$a;

    invoke-interface {v0, v3}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 184
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 185
    invoke-virtual {v8}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    new-array v2, v2, [Lcom/coloros/settings/feature/process/RunningApplications$a;

    invoke-interface {v3, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 186
    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 187
    new-instance v3, Lcom/coloros/settings/feature/process/RunningApplications$b;

    invoke-direct {v3}, Lcom/coloros/settings/feature/process/RunningApplications$b;-><init>()V

    .line 188
    iput-object v2, v3, Lcom/coloros/settings/feature/process/RunningApplications$b;->b:Ljava/util/List;

    .line 189
    iput-object v0, v3, Lcom/coloros/settings/feature/process/RunningApplications$b;->a:Ljava/util/List;

    return-object v3
.end method

.method private synthetic a(FLcom/coloros/settings/feature/process/RunningApplications$a;)V
    .locals 3

    .line 179
    iget v0, p2, Lcom/coloros/settings/feature/process/RunningApplications$a;->g:F

    const/high16 v1, 0x49800000    # 1048576.0f

    div-float/2addr v0, v1

    div-float/2addr v0, p1

    const/high16 p1, 0x42c80000    # 100.0f

    mul-float/2addr v0, p1

    iput v0, p2, Lcom/coloros/settings/feature/process/RunningApplications$a;->h:F

    .line 180
    iget-object p1, p0, Lcom/coloros/settings/feature/process/a$a;->a:Lcom/coloros/settings/feature/process/a;

    .line 8046
    iget-object p1, p1, Lcom/coloros/settings/feature/process/a;->b:Landroid/content/Context;

    const v0, 0x7f1212a3

    .line 180
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p2, Lcom/coloros/settings/feature/process/RunningApplications$a;->h:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p2, Lcom/coloros/settings/feature/process/RunningApplications$a;->g:F

    const/high16 v2, 0x44800000    # 1024.0f

    div-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p2, Lcom/coloros/settings/feature/process/RunningApplications$a;->i:Ljava/lang/String;

    return-void
.end method

.method private static synthetic a([II[Landroid/os/Debug$MemoryInfo;Lcom/coloros/settings/feature/process/RunningApplications$a;)V
    .locals 1

    .line 169
    iget-object v0, p3, Lcom/coloros/settings/feature/process/RunningApplications$a;->f:Ljava/util/Set;

    aget p0, p0, p1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 170
    iget p0, p3, Lcom/coloros/settings/feature/process/RunningApplications$a;->g:F

    aget-object p1, p2, p1

    invoke-virtual {p1}, Landroid/os/Debug$MemoryInfo;->getTotalPss()I

    move-result p1

    int-to-float p1, p1

    add-float/2addr p0, p1

    iput p0, p3, Lcom/coloros/settings/feature/process/RunningApplications$a;->g:F

    :cond_0
    return-void
.end method

.method private synthetic b(FLcom/coloros/settings/feature/process/RunningApplications$a;)V
    .locals 3

    .line 175
    iget v0, p2, Lcom/coloros/settings/feature/process/RunningApplications$a;->g:F

    const/high16 v1, 0x49800000    # 1048576.0f

    div-float/2addr v0, v1

    div-float/2addr v0, p1

    const/high16 p1, 0x42c80000    # 100.0f

    mul-float/2addr v0, p1

    iput v0, p2, Lcom/coloros/settings/feature/process/RunningApplications$a;->h:F

    .line 176
    iget-object p1, p0, Lcom/coloros/settings/feature/process/a$a;->a:Lcom/coloros/settings/feature/process/a;

    .line 9046
    iget-object p1, p1, Lcom/coloros/settings/feature/process/a;->b:Landroid/content/Context;

    const v0, 0x7f1212a3

    .line 176
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p2, Lcom/coloros/settings/feature/process/RunningApplications$a;->h:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p2, Lcom/coloros/settings/feature/process/RunningApplications$a;->g:F

    const/high16 v2, 0x44800000    # 1024.0f

    div-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p2, Lcom/coloros/settings/feature/process/RunningApplications$a;->i:Ljava/lang/String;

    return-void
.end method

.method private static synthetic b([II[Landroid/os/Debug$MemoryInfo;Lcom/coloros/settings/feature/process/RunningApplications$a;)V
    .locals 1

    .line 164
    iget-object v0, p3, Lcom/coloros/settings/feature/process/RunningApplications$a;->f:Ljava/util/Set;

    aget p0, p0, p1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 165
    iget p0, p3, Lcom/coloros/settings/feature/process/RunningApplications$a;->g:F

    aget-object p1, p2, p1

    invoke-virtual {p1}, Landroid/os/Debug$MemoryInfo;->getTotalPss()I

    move-result p1

    int-to-float p1, p1

    add-float/2addr p0, p1

    iput p0, p3, Lcom/coloros/settings/feature/process/RunningApplications$a;->g:F

    :cond_0
    return-void
.end method

.method public static synthetic lambda$BSjbnEXNBpxn-TtLV6N-VMLrtBY(Lcom/coloros/settings/feature/process/a$a;FLcom/coloros/settings/feature/process/RunningApplications$a;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/coloros/settings/feature/process/a$a;->b(FLcom/coloros/settings/feature/process/RunningApplications$a;)V

    return-void
.end method

.method public static synthetic lambda$C8J8FJJ6-5oEnPlyZ61IyjvTXnI([II[Landroid/os/Debug$MemoryInfo;Lcom/coloros/settings/feature/process/RunningApplications$a;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/coloros/settings/feature/process/a$a;->a([II[Landroid/os/Debug$MemoryInfo;Lcom/coloros/settings/feature/process/RunningApplications$a;)V

    return-void
.end method

.method public static synthetic lambda$i2jcHgdo_O7X4uw5HnoGl32xvgI([II[Landroid/os/Debug$MemoryInfo;Lcom/coloros/settings/feature/process/RunningApplications$a;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/coloros/settings/feature/process/a$a;->b([II[Landroid/os/Debug$MemoryInfo;Lcom/coloros/settings/feature/process/RunningApplications$a;)V

    return-void
.end method

.method public static synthetic lambda$jEMMuPNJY9D1eUVrhdbTo2frJ94(Lcom/coloros/settings/feature/process/a$a;FLcom/coloros/settings/feature/process/RunningApplications$a;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/coloros/settings/feature/process/a$a;->a(FLcom/coloros/settings/feature/process/RunningApplications$a;)V

    return-void
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 68
    invoke-direct {p0}, Lcom/coloros/settings/feature/process/a$a;->a()Lcom/coloros/settings/feature/process/RunningApplications$b;

    move-result-object p1

    return-object p1
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 3

    .line 68
    check-cast p1, Lcom/coloros/settings/feature/process/RunningApplications$b;

    .line 5076
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 5077
    iget-object v0, p0, Lcom/coloros/settings/feature/process/a$a;->a:Lcom/coloros/settings/feature/process/a;

    .line 6046
    iget-object v0, v0, Lcom/coloros/settings/feature/process/a;->a:Lcom/coloros/settings/feature/process/b;

    .line 7044
    iget-object v1, v0, Lcom/coloros/settings/feature/process/b;->a:Lcom/coloros/settings/feature/process/RunningApplicationActivity;

    if-eqz v1, :cond_0

    .line 7045
    iget-object v0, v0, Lcom/coloros/settings/feature/process/b;->a:Lcom/coloros/settings/feature/process/RunningApplicationActivity;

    .line 7141
    iget-object v1, v0, Lcom/coloros/settings/feature/process/RunningApplicationActivity;->d:Lcom/coloros/settings/feature/process/RunningApplications;

    iget-object v2, p1, Lcom/coloros/settings/feature/process/RunningApplications$b;->b:Ljava/util/List;

    invoke-virtual {v1, v2}, Lcom/coloros/settings/feature/process/RunningApplications;->a(Ljava/util/List;)V

    .line 7142
    iget-object v1, v0, Lcom/coloros/settings/feature/process/RunningApplicationActivity;->e:Lcom/coloros/settings/feature/process/RunningApplications;

    iget-object p1, p1, Lcom/coloros/settings/feature/process/RunningApplications$b;->a:Ljava/util/List;

    invoke-virtual {v1, p1}, Lcom/coloros/settings/feature/process/RunningApplications;->a(Ljava/util/List;)V

    .line 7143
    iget-object p1, v0, Lcom/coloros/settings/feature/process/RunningApplicationActivity;->c:Lcom/coloros/settings/feature/process/RunningApplicationActivity$a;

    invoke-virtual {p1}, Lcom/coloros/settings/feature/process/RunningApplicationActivity$a;->notifyDataSetChanged()V

    .line 7153
    iget-object p1, v0, Lcom/coloros/settings/feature/process/RunningApplicationActivity;->b:Landroidx/viewpager/widget/ViewPager;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroidx/viewpager/widget/ViewPager;->setVisibility(I)V

    .line 7154
    iget-object p1, v0, Lcom/coloros/settings/feature/process/RunningApplicationActivity;->a:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method protected final onPreExecute()V
    .locals 0

    .line 71
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    return-void
.end method
